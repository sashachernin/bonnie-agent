# Repository Guidelines

## Project Structure & Module Organization

- `posts/` contains the source Markdown posts, one file per idea.
- `agent/research-prompt.md` defines research requirements and the post format.
- `scripts/build.mjs` is the dependency-free static site generator; it also contains HTML templates and the stylesheet.
- `docs/` holds generated GitHub Pages output; `IDEAS.md` is the generated idea ledger. Edit their sources, then rebuild and commit the generated changes.
- `run-agent.sh` / `run-agent.ps1` orchestrate research and publication. `setup-schedule.sh` / `setup-schedule.ps1` manage scheduled runs.
- `logs/` contains ignored runtime output. There is no dedicated test directory.

## Build, Test, and Development Commands

Use Node.js 18 or newer; no `npm install` is needed for the build.

- `node scripts/build.mjs`: regenerate `docs/` and `IDEAS.md` from posts.
- Open `docs/index.html` in a browser to preview the site.
- `node --check scripts/build.mjs`: check JavaScript syntax.
- `bash -n run-agent.sh setup-schedule.sh`: check Bash syntax.
- `./run-agent.sh --no-push` or `.\run-agent.ps1 -NoPush`: perform research, build, and commit locally. These still invoke Codex and may pull remote changes; they are not routine tests.
- `./setup-schedule.sh`: install three daily cron jobs; the PowerShell counterpart configures Windows tasks.

## Coding Style & Naming Conventions

Match existing style: two-space JavaScript indentation, single-quoted strings, semicolons, and camelCase functions; four-space indentation in shell and PowerShell blocks. Keep the generator dependency-free. No formatter or linter is configured.

Name posts `YYYY-MM-DD-<slot>-<slug>.md`, using `morning`, `afternoon`, or `evening` and a lowercase, hyphenated slug. Follow the exact frontmatter and headings in the research prompt. Update that prompt and the generator's `REQUIRED` list together when changing the schema.

## Testing Guidelines

No automated test framework or coverage threshold is configured. For generator or content changes, rebuild, check warnings for skipped posts, inspect the generated diff, and preview affected pages. For layout changes, check narrow screens and light/dark modes. Validate runner changes on the affected platform.

## Commit & Pull Request Guidelines

History uses short descriptive subjects for maintenance and `post: YYYY-MM-DD-slot-slug` for publication commits. Follow those patterns. PRs should explain the change, list validation performed, and link related issues when applicable. Include screenshots for visible layout changes and regenerated output when sources change.
