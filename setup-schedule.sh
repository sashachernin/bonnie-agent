#!/usr/bin/env bash
# Install three entries in the current user's crontab, preserving other jobs.
set -Eeuo pipefail
morning=09:00 afternoon=15:00 evening=21:00 unregister=false
usage() { echo 'Usage: ./setup-schedule.sh [--morning-time HH:MM] [--afternoon-time HH:MM] [--evening-time HH:MM] [--unregister]'; }
while (($#)); do
    case "$1" in
        --morning-time|--afternoon-time|--evening-time)
            (($# >= 2)) || { usage >&2; exit 2; }
            case "$1" in
                --morning-time) morning=$2 ;;
                --afternoon-time) afternoon=$2 ;;
                --evening-time) evening=$2 ;;
            esac
            shift 2 ;;
        --unregister) unregister=true; shift ;;
        -h|--help) usage; exit 0 ;;
        *) usage >&2; exit 2 ;;
    esac
done
for time in "$morning" "$afternoon" "$evening"; do
    [[ "$time" =~ ^([01][0-9]|2[0-3]):[0-5][0-9]$ ]] || { echo "Invalid HH:MM: $time" >&2; exit 2; }
done
command -v crontab >/dev/null || { echo 'Install cron first (Ubuntu: sudo apt install cron).' >&2; exit 1; }
repo=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)
# POSIX shell quoting, followed by cron's special handling of percent signs.
quote() { local value=${1//\'/\'\\\'\'}; printf "'%s'" "$value"; }
[[ "$repo$PATH" != *$'\n'* ]] || { echo 'Paths must not contain newlines.' >&2; exit 1; }
tmp=$(mktemp -d)
trap 'rm -rf -- "$tmp"' EXIT
if ! LC_ALL=C crontab -l >"$tmp/old" 2>"$tmp/error"; then
    if ! LC_ALL=C grep -q 'no crontab for' "$tmp/error"; then cat "$tmp/error" >&2; exit 1; fi
fi
sed '/# BEGIN bonnie-agent/,/# END bonnie-agent/d' "$tmp/old" >"$tmp/new"
if ! $unregister; then
    mkdir -p "$repo/logs"
    {
        echo '# BEGIN bonnie-agent'
        for slot in morning afternoon evening; do
            time=${!slot}
            command="PATH=$(quote "$PATH") /bin/bash $(quote "$repo/run-agent.sh") --slot $slot >>$(quote "$repo/logs/scheduler.log") 2>&1"
            command=${command//%/\\%}
            printf '%d %d * * * %s\n' "$((10#${time:3:2}))" "$((10#${time:0:2}))" "$command"
        done
        echo '# END bonnie-agent'
    } >>"$tmp/new"
fi
crontab "$tmp/new"
if $unregister; then echo 'Removed bonnie-agent cron jobs.'
else echo "Installed daily runs at $morning, $afternoon, and $evening in the cron daemon's timezone. Check with: crontab -l"; fi
