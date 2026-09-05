#!/usr/bin/env bash
# Linux runner. Requires Bash, GNU coreutils, flock, Node.js, Git and Codex.
set -Eeuo pipefail
slot= model=gpt-6-astra timeout_minutes=30 no_push=false
usage() {
    echo 'Usage: ./run-agent.sh [--slot morning|afternoon|evening] [--model MODEL] [--timeout-minutes N] [--no-push]'
}
while (($#)); do
    case "$1" in
        --slot|--model|--timeout-minutes)
            (($# >= 2)) || { usage >&2; exit 2; }
            case "$1" in
                --slot) slot=$2 ;;
                --model) model=$2 ;;
                --timeout-minutes) timeout_minutes=$2 ;;
            esac
            shift 2 ;;
        --no-push) no_push=true; shift ;;
        -h|--help) usage; exit 0 ;;
        *) usage >&2; exit 2 ;;
    esac
done
[[ -z "$slot" || "$slot" == morning || "$slot" == afternoon || "$slot" == evening ]] || { usage >&2; exit 2; }
[[ "$timeout_minutes" =~ ^[1-9][0-9]*$ && -n "$model" ]] || { usage >&2; exit 2; }
repo=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
cd -- "$repo"
if [[ -z "$slot" ]]; then
    hour=$((10#$(date +%H)))
    if ((hour < 12)); then slot=morning
    elif ((hour < 18)); then slot=afternoon
    else slot=evening; fi
fi
mkdir -p logs posts
prefix="logs/$(date +%F)-$slot"
log() { printf '[%s] %s\n' "$(date '+%F %T')" "$*" | tee -a "$prefix.log"; }
fail() { log "ERROR: $*"; exit 1; }
trap 'log "ERROR: command failed at line $LINENO (exit $?)."' ERR
[[ ! -e STOP ]] || { log 'STOP file present. Exiting.'; exit 0; }
for tool in codex node git flock timeout; do
    command -v "$tool" >/dev/null || fail "Missing required command: $tool"
done
# Keep the inode: deleting a flock file can let overlapping runs lock different files.
exec 9>.agent.lock
flock -n 9 || { log 'Another run is in progress. Exiting.'; exit 0; }
log "Run starting. slot=$slot model=$model repo=$repo"
# Protect existing publication edits; unrelated code changes can stay in place.
[[ -z "$(git status --porcelain -- posts docs IDEAS.md)" ]] || fail 'Posts or generated site files have local changes. Commit or stash changes in posts/, docs/, and IDEAS.md before running.'
export GIT_TERMINAL_PROMPT=0
has_remote=false
if git remote get-url origin >/dev/null 2>&1; then
    has_remote=true
    log 'Pulling from origin.'
    git pull --ff-only >>"$prefix.log" 2>&1 || fail "git pull failed; see $prefix.log"
else
    log 'No origin configured. Will commit locally only.'
fi
shopt -s nullglob
declare -A before=()
for post in posts/*.md; do before["$post"]=1; done
{
    printf "RUN CONTEXT: today's date is %s. This is the %s run.\n" "$(date +%F)" "$slot"
    printf 'Carry out the instructions below now. They are the whole task.\n\n'
    cat agent/research-prompt.md
} >"$prefix.prompt.txt"
log "Starting research (timeout ${timeout_minutes}m). Output: $prefix.agent.out; progress: $prefix.agent.err"
if timeout --kill-after=10s "${timeout_minutes}m" codex --search --ask-for-approval never exec \
    --ephemeral --sandbox workspace-write --model "$model" - \
    <"$prefix.prompt.txt" >"$prefix.agent.out" 2>"$prefix.agent.err"; then
    log 'Agent exited successfully.'
else
    code=$?
    tail -n 20 "$prefix.agent.err" >>"$prefix.log"
    fail "Agent failed or timed out (exit $code). Nothing committed."
fi
new=()
for post in posts/*.md; do
    [[ -n "${before[$post]+yes}" ]] || new+=("$post")
done
((${#new[@]} == 1)) || fail "Expected one new post, found ${#new[@]}. Nothing committed."
log "New post: ${new[0]}"
node scripts/build.mjs >>"$prefix.log" 2>&1
slug=$(basename -- "${new[0]}" .md)
post_slug=$(node -e 'const fs = require("fs"); const text = fs.readFileSync(process.argv[1], "utf8"); const match = text.match(/^slug:\s*(.*?)\s*$/m); if (!match) process.exit(1); console.log(match[1].replace(/^["\x27]|["\x27]$/g, ""));' "${new[0]}")
[[ -f "docs/p/$post_slug.html" ]] || fail 'New post was rejected by the site builder. Nothing committed.'
# Explicit paths keep unrelated files created by the agent out of the commit.
git add -- "${new[0]}" docs IDEAS.md
git commit --only -m "post: $slug" -- "${new[0]}" docs IDEAS.md >>"$prefix.log" 2>&1
log "Committed: post: $slug"
if $no_push || ! $has_remote; then
    log 'Commit stays local.'
elif git push >>"$prefix.log" 2>&1; then
    log 'Pushed to origin.'
else
    log "WARNING: git push failed; commit stays local. See $prefix.log"
fi
log 'Run finished.'
