<#
.SYNOPSIS
    Registers (or removes) the three daily Windows scheduled tasks that run the agent.

.DESCRIPTION
    Creates three tasks, bonnie-agent-morning, bonnie-agent-afternoon, and
    bonnie-agent-evening, each
    running run-agent.ps1 with the matching -Slot. Re-running this script
    overwrites the existing tasks, so it is safe to run again after changing
    the times.

    The tasks run as the current user with an interactive logon, because the
    Codex CLI uses the credentials from your own `codex` login. They will not
    fire while nobody is logged in.

.PARAMETER MorningTime
    24-hour HH:mm for the first run. Default 09:00.

.PARAMETER AfternoonTime
    24-hour HH:mm for the second run. Default 15:00.

.PARAMETER EveningTime
    24-hour HH:mm for the third run. Default 21:00.

.PARAMETER Unregister
    Remove all three tasks instead of creating them.

.EXAMPLE
    .\setup-schedule.ps1
    .\setup-schedule.ps1 -MorningTime 07:30 -EveningTime 19:00
    .\setup-schedule.ps1 -Unregister
#>

[CmdletBinding()]
param(
    [string] $MorningTime = '09:00',
    [string] $AfternoonTime = '15:00',
    [string] $EveningTime = '21:00',
    [switch] $Unregister
)

$ErrorActionPreference = 'Stop'

$Repo = $PSScriptRoot
$Script = Join-Path $Repo 'run-agent.ps1'
$Tasks = @{ morning = $MorningTime; afternoon = $AfternoonTime; evening = $EveningTime }

if ($Unregister) {
    foreach ($slot in $Tasks.Keys) {
        $name = "bonnie-agent-$slot"
        try {
            Unregister-ScheduledTask -TaskName $name -Confirm:$false -ErrorAction Stop
            Write-Host "Removed $name"
        }
        catch {
            Write-Host "$name was not registered"
        }
    }
    return
}

if (-not (Test-Path $Script)) { throw "run-agent.ps1 not found next to this script ($Script)." }

$principal = New-ScheduledTaskPrincipal -UserId "$env:USERDOMAIN\$env:USERNAME" -LogonType Interactive -RunLevel Limited

# StartWhenAvailable matters: if the machine is asleep at 09:00 the run fires
# on wake instead of being silently skipped.
$settings = New-ScheduledTaskSettingsSet `
    -StartWhenAvailable `
    -AllowStartIfOnBatteries `
    -DontStopIfGoingOnBatteries `
    -MultipleInstances IgnoreNew `
    -ExecutionTimeLimit (New-TimeSpan -Hours 1)

foreach ($slot in @('morning', 'afternoon', 'evening')) {
    $time = $Tasks[$slot]
    try { $at = [datetime]::ParseExact($time, 'HH:mm', $null) }
    catch { throw "Could not read '$time' as a 24-hour HH:mm time." }

    $name = "bonnie-agent-$slot"

    # -Slot is passed explicitly so a run delayed until the afternoon is still
    # labelled as the morning run.
    $action = New-ScheduledTaskAction -Execute 'powershell.exe' `
        -Argument "-NoProfile -ExecutionPolicy Bypass -File `"$Script`" -Slot $slot" `
        -WorkingDirectory $Repo

    $trigger = New-ScheduledTaskTrigger -Daily -At $at

    Register-ScheduledTask -TaskName $name -Action $action -Trigger $trigger `
        -Settings $settings -Principal $principal `
        -Description "bonnie-agent: research and publish one business idea ($slot run)" `
        -Force | Out-Null

    Write-Host "Registered $name at $time daily"
}

Write-Host ''
Write-Host 'Check them with:  Get-ScheduledTask -TaskName "bonnie-agent-*"'
Write-Host 'Run one now with: Start-ScheduledTask -TaskName "bonnie-agent-morning"'
Write-Host 'Remove them with: .\setup-schedule.ps1 -Unregister'
