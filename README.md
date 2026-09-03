# bonnie-agent

Twice a day, an agent spends about ten minutes researching the web, proposes one
business idea, and publishes it as a post on a static blog served by GitHub Pages.

That is the whole scope. It does not build anything, spend anything, or contact
anyone.

## How a run works

```
Task Scheduler  ->  run-agent.ps1  ->  codex exec  ->  posts/2026-09-03-morning-*.md
                                            |
                                            v
                                   scripts/build.mjs  ->  docs/  +  IDEAS.md
                                            |
                                            v
                                    git commit && git push  ->  GitHub Pages
```

The agent follows [`agent/research-prompt.md`](agent/research-prompt.md): pick a
category it has not used recently, run at least eight differently-framed web
searches, shortlist three ideas, kill two, then dig into the survivor until it
has three named competitors with real prices, three fully-read primary pages, and
a verified source for the one claim the idea rests on. Those depth requirements
are what make a run take roughly ten minutes — there is no timer, so raising or
lowering them is how you change the length of a run.

The prompt is strict about honesty: never invent a URL, price, or statistic;
say so plainly when the evidence is thin; and end every post with the best
argument against the idea. A run that finds nothing credible is expected to
write that rather than pad.

Ideas are not restricted to any category list. The prompt names a dozen or so
(SaaS, ad-supported tool, mobile app, game, marketplace, hardware, service, …)
purely to get the agent moving, and explicitly tells it that inventing a category
nobody listed is the better outcome.

## Requirements

- Windows with PowerShell 5.1 (built in)
- [Node.js](https://nodejs.org) 18 or newer — `node --version`
- Git
- The Codex CLI: `npm install -g @openai/codex`
- **A completed interactive login.** Run `codex` once in a terminal and sign in.
  Task Scheduler cannot answer a login prompt, so an unauthenticated CLI means
  every scheduled run fails.

## Setup

**1. Commit and push the repo.** Create an empty repository on GitHub first,
then:

```powershell
git add -A
git commit -m "initial commit"
git branch -M main
git remote add origin https://github.com/<you>/<repo>.git
git push -u origin main
```

**2. Turn on GitHub Pages.** In the repo: **Settings → Pages → Build and
deployment → Deploy from a branch**, then select branch `main` and folder
**`/docs`**. Your blog appears at `https://<you>.github.io/<repo>/` within a
minute or two.

**3. Schedule the two daily runs.**

```powershell
.\setup-schedule.ps1                                  # 09:00 and 21:00
.\setup-schedule.ps1 -MorningTime 07:30 -EveningTime 19:00
```

This registers `bonnie-agent-morning` and `bonnie-agent-evening`. Re-run it any
time to change the times. The tasks run as you, with an interactive logon,
because the CLI uses your own `codex` credentials — they will not fire while
nobody is logged in.

## Running it yourself

```powershell
.\run-agent.ps1                      # a full run right now
.\run-agent.ps1 -Slot evening        # force the slot label
.\run-agent.ps1 -NoPush              # commit locally, do not push
.\run-agent.ps1 -Model gpt-5.6-terra # lower-cost run
.\run-agent.ps1 -TimeoutMinutes 45   # allow a longer research phase
```

Rebuild the site without invoking the agent, then open it locally:

```powershell
node scripts\build.mjs
start docs\index.html
```

## Pausing and stopping

```powershell
New-Item -ItemType File STOP         # scheduled runs exit immediately
Remove-Item STOP                     # resume
.\setup-schedule.ps1 -Unregister     # remove both scheduled tasks
```

`STOP` is gitignored, so pausing your machine does not pause anyone else's.

## Where things live

| Path | What it is |
| --- | --- |
| `agent/research-prompt.md` | The research pipeline. **Edit this to change what the agent looks for.** |
| `posts/` | Source of truth. One markdown file per idea. |
| `scripts/build.mjs` | Static site generator. Zero dependencies, no `npm install`. |
| `docs/` | Generated site, committed because Pages serves it. Safe to delete and rebuild. |
| `IDEAS.md` | Generated ledger of past ideas. The agent reads it to avoid repeating itself. |
| `run-agent.ps1` | One run, end to end. |
| `setup-schedule.ps1` | Registers/removes the two scheduled tasks. |
| `logs/` | Per-run logs plus raw agent output. Gitignored. |

`docs/` and `IDEAS.md` are rebuilt from `posts/` on every run, so `posts/` is the
only thing worth backing up or editing by hand.

## Safety rails

- A run that produces no post **commits nothing** and exits non-zero.
- A lock file makes overlapping runs impossible — if the morning run is still
  going at 21:00, the evening run exits rather than colliding with it.
- The research step is killed after `-TimeoutMinutes` (default 30).
- A failed `git push` is logged but not fatal; the commit stays local and the
  next successful run pushes it.
- Codex gets live web search and a `workspace-write` sandbox. The prompt instructs
  it to reading `IDEAS.md` and writing one post; the runner does all build and
  git work itself.

## Changing the blog

Site title and tagline are the two constants at the top of `scripts/build.mjs`.
The stylesheet is the `CSS()` function at the bottom of the same file; it
handles light and dark mode. Post layout lives in `buildPost`.

If you change the post format, change `agent/research-prompt.md` and the
`REQUIRED` frontmatter list in `scripts/build.mjs` together. A post with missing
or malformed frontmatter is skipped with a warning rather than breaking the build.

## Troubleshooting

**Runs do nothing.** Check `logs\<date>-<slot>.log` first, then `.agent.err` for
Codex's progress and errors and `.agent.out` for its final message.

**"Agent produced no new post."** Usually authentication. Run `codex` in a
terminal and confirm you are signed in.

**A scheduled task never fires.** `Get-ScheduledTask -TaskName "bonnie-agent-*"`
to confirm it exists, then `Start-ScheduledTask -TaskName "bonnie-agent-morning"`
to prove it works outside an interactive shell. Remember the tasks need you
logged in.

**The site is stale.** GitHub Pages takes a minute after a push. Confirm
Settings → Pages still points at `main` / `/docs`.

**"Another run is in progress."** A run really is going. The lock is the open
file *handle*, not the file itself, so a `.agent.lock` left behind by a run you
killed with Ctrl+C does not block anything — the next run reclaims it. You should
never need to delete it by hand.
