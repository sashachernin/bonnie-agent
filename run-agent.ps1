<#
.SYNOPSIS
    One research run: propose a business idea, publish it to the blog.

.DESCRIPTION
    Invoked twice a day by Windows Task Scheduler (see setup-schedule.ps1), or
    by hand for a one-off run. Each run:

      1. bails out if STOP exists or another run is still going
      2. hands agent/research-prompt.md to the Claude Code CLI, which spends
         about ten minutes researching and writes one file into posts/
      3. rebuilds docs/ and IDEAS.md from posts/
      4. commits and pushes

    A run that produces no post commits nothing and exits non-zero.

.PARAMETER Slot
    morning or evening. Defaults to morning before 15:00, evening after.

.PARAMETER Model
    Model passed to the CLI. Default: opus.

.PARAMETER TimeoutMinutes
    Hard kill for the research step. Default: 30.

.PARAMETER NoPush
    Commit locally but do not push.

.EXAMPLE
    .\run-agent.ps1
    .\run-agent.ps1 -Slot evening -Model sonnet -NoPush
#>

[CmdletBinding()]
param(
    [ValidateSet('morning', 'evening')]
    [string] $Slot,
    [string] $Model = 'opus',
    [int]    $TimeoutMinutes = 30,
    [switch] $NoPush
)

$ErrorActionPreference = 'Stop'

$Repo = $PSScriptRoot
$Lock = Join-Path $Repo '.agent.lock'
$Stop = Join-Path $Repo 'STOP'
$Posts = Join-Path $Repo 'posts'
$LogDir = Join-Path $Repo 'logs'

if (-not $Slot) {
    if ((Get-Date).Hour -lt 15) { $Slot = 'morning' } else { $Slot = 'evening' }
}

New-Item -ItemType Directory -Force -Path $LogDir, $Posts | Out-Null
$Log = Join-Path $LogDir "$(Get-Date -Format yyyy-MM-dd)-$Slot.log"

function Write-Log {
    param([string] $Message)
    $line = "[{0}] {1}" -f (Get-Date -Format 'yyyy-MM-dd HH:mm:ss'), $Message
    Write-Host $line
    Add-Content -Path $Log -Value $line -Encoding utf8
}

# git writes ordinary progress to stderr and node's console.warn does too. In
# Windows PowerShell 5.1 that becomes a NativeCommandError, which is fatal under
# $ErrorActionPreference = 'Stop'. Downgrading inside this function's scope keeps
# the global setting intact; success is judged by the exit code instead.
function Invoke-Native {
    param(
        [Parameter(Mandatory = $true)][string] $File,
        [string[]] $Arguments = @()
    )
    $ErrorActionPreference = 'Continue'
    $out = & $File @Arguments 2>&1
    [pscustomobject]@{
        Ok     = ($LASTEXITCODE -eq 0)
        Code   = $LASTEXITCODE
        Output = (($out | ForEach-Object { $_.ToString() }) -join "`n").Trim()
    }
}

function Invoke-Git {
    param([Parameter(ValueFromRemainingArguments = $true)][string[]] $GitArgs)
    Invoke-Native -File 'git' -Arguments (@('-C', $Repo) + $GitArgs)
}

# --- pre-flight -------------------------------------------------------------

if (Test-Path $Stop) {
    Write-Log 'STOP file present. Exiting without doing anything.'
    exit 0
}

# Atomic: fails outright if a previous run is still holding the file, which is
# what keeps a slow morning run from colliding with the evening trigger.
try {
    $lockStream = [IO.File]::Open($Lock, 'CreateNew', 'Write', 'None')
}
catch {
    Write-Log 'Another run holds the lock. Exiting.'
    exit 0
}

$exitCode = 0

try {
    Write-Log "Run starting. slot=$Slot model=$Model repo=$Repo"

    $claudeCmd = Join-Path (Split-Path (Get-Command claude).Source) 'claude.cmd'
    if (-not (Test-Path $claudeCmd)) {
        throw "Claude CLI not found at $claudeCmd. Install it with: npm i -g @anthropic-ai/claude-code"
    }

    # --- sync ---------------------------------------------------------------

    # `git remote` lists names and never errors, so a repo with no origin yet
    # (the state right after `git init`) is handled without a failure path.
    $hasRemote = (Invoke-Git 'remote').Output -split "`n" -contains 'origin'
    if ($hasRemote) {
        Write-Log 'Pulling from origin.'
        $pull = Invoke-Git 'pull' '--ff-only'
        if (-not $pull.Ok) { Write-Log "git pull failed, continuing anyway: $($pull.Output)" }
    }
    else {
        Write-Log 'No git remote configured. Will commit locally only.'
    }

    # --- research -----------------------------------------------------------

    $before = @(Get-ChildItem -Path $Posts -Filter *.md -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Name)

    # The prompt is piped in on stdin as the run's actual instructions, rather
    # than telling the agent to go and read the file itself. Asking it to read
    # the file made it treat the repo as the subject of the request and reply
    # with a code review instead of doing the research.
    $promptFile = Join-Path $Repo 'agent\research-prompt.md'
    if (-not (Test-Path $promptFile)) { throw "Missing $promptFile" }

    $runPrompt = Join-Path $LogDir "$(Get-Date -Format yyyy-MM-dd)-$Slot.prompt.txt"
    $header = @(
        "RUN CONTEXT: today's date is $(Get-Date -Format 'yyyy-MM-dd'). This is the $Slot run.",
        'Carry out the instructions below now. They are the whole task.',
        ''
    ) -join "`n"
    Set-Content -Path $runPrompt -Value ($header + (Get-Content $promptFile -Raw)) -Encoding utf8

    # --tools bounds which tools exist at all (note: no Bash — the agent cannot
    # run commands, the runner does all git work itself). --allowedTools then
    # pre-approves them, because an unattended run has nobody to answer a
    # permission prompt and would otherwise stall on the first web search.
    $toolset = 'Read,Write,Edit,Glob,Grep,WebSearch,WebFetch,TodoWrite'

    $cliArgs = @(
        '-p',
        '--model', $Model,
        '--permission-mode', 'acceptEdits',
        '--tools', $toolset,
        '--allowedTools', $toolset
    )

    $outFile = Join-Path $LogDir "$(Get-Date -Format yyyy-MM-dd)-$Slot.agent.out"
    $errFile = Join-Path $LogDir "$(Get-Date -Format yyyy-MM-dd)-$Slot.agent.err"

    Write-Log "Starting research (timeout ${TimeoutMinutes}m). Agent output -> $outFile"

    $proc = Start-Process -FilePath $claudeCmd -ArgumentList $cliArgs `
        -WorkingDirectory $Repo -NoNewWindow -PassThru `
        -RedirectStandardInput $runPrompt `
        -RedirectStandardOutput $outFile -RedirectStandardError $errFile

    # Touching .Handle caches it, which is what makes .ExitCode readable later.
    $null = $proc.Handle

    Wait-Process -Id $proc.Id -Timeout ($TimeoutMinutes * 60) -ErrorAction SilentlyContinue

    if (-not $proc.HasExited) {
        Write-Log "TIMEOUT after ${TimeoutMinutes}m. Killing the agent."
        Stop-Process -Id $proc.Id -Force -ErrorAction SilentlyContinue
    }
    else {
        Write-Log "Agent exited with code $($proc.ExitCode)."
    }

    if (Test-Path $errFile) {
        $stderr = (Get-Content $errFile -Raw)
        if ($stderr -and $stderr.Trim()) { Write-Log "Agent stderr: $($stderr.Trim())" }
    }

    # --- verify -------------------------------------------------------------

    $after = @(Get-ChildItem -Path $Posts -Filter *.md -ErrorAction SilentlyContinue |
        Select-Object -ExpandProperty Name)
    $new = @($after | Where-Object { $before -notcontains $_ })

    if ($new.Count -eq 0) {
        # Pull the tail of the agent's own output into the log so the failure is
        # diagnosable without opening a second file.
        if (Test-Path $outFile) {
            $tail = Get-Content $outFile -Tail 20 | Where-Object { $_.Trim() }
            if ($tail) {
                Write-Log 'Last lines of agent output:'
                $tail | ForEach-Object { Write-Log "  | $_" }
            }
        }
        throw "Agent produced no new post. Nothing will be committed. Full output: $outFile"
    }
    if ($new.Count -gt 1) {
        Write-Log "WARNING: agent wrote $($new.Count) posts, expected 1: $($new -join ', ')"
    }
    Write-Log "New post: $($new -join ', ')"

    # --- build --------------------------------------------------------------

    Write-Log 'Building site.'
    $build = Invoke-Native -File 'node' -Arguments @((Join-Path $Repo 'scripts\build.mjs'))
    $build.Output -split "`n" | Where-Object { $_ } | ForEach-Object { Write-Log "  $_" }
    if (-not $build.Ok) { throw "Site build failed (exit $($build.Code))." }

    # --- publish ------------------------------------------------------------

    $add = Invoke-Git 'add' '-A'
    if (-not $add.Ok) { throw "git add failed: $($add.Output)" }

    # --quiet exits 1 when there *are* staged changes, so a failure here is the
    # normal case and Ok means there was nothing to commit.
    if ((Invoke-Git 'diff' '--cached' '--quiet').Ok) {
        Write-Log 'Nothing staged. Skipping commit.'
    }
    else {
        $slug = [IO.Path]::GetFileNameWithoutExtension($new[0])
        $commit = Invoke-Git 'commit' '-m' "post: $slug"
        if (-not $commit.Ok) { throw "git commit failed: $($commit.Output)" }
        Write-Log "Committed: post: $slug"

        if ($NoPush) {
            Write-Log 'NoPush set. Commit stays local.'
        }
        elseif (-not $hasRemote) {
            Write-Log 'No remote. Commit stays local.'
        }
        else {
            $push = Invoke-Git 'push'
            if ($push.Ok) {
                Write-Log 'Pushed to origin.'
            }
            else {
                # Non-fatal on purpose: the commit is safe locally and the next
                # run will push it once the network or credentials come back.
                Write-Log "WARNING: git push failed, commit is still local: $($push.Output)"
            }
        }
    }

    Write-Log 'Run finished.'
}
catch {
    Write-Log "ERROR: $_"
    $exitCode = 1
}
finally {
    if ($lockStream) { $lockStream.Close() }
    Remove-Item $Lock -Force -ErrorAction SilentlyContinue
}

exit $exitCode
