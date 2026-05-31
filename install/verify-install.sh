#!/usr/bin/env sh
set -eu

target="${HOME}/.hvn"
host="shared"

while [ "$#" -gt 0 ]; do
  case "$1" in
    --target) target="$2"; shift 2 ;;
    --host) host="$2"; shift 2 ;;
    -h|--help) printf 'Usage: verify-install.sh [--target path] [--host shared|claude|codex|opencode|hermes]\n'; exit 0 ;;
    *) printf 'Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

case "$host" in
  shared|claude|codex|opencode|hermes) ;;
  *) printf 'Host must be shared, claude, codex, opencode, or hermes\n' >&2; exit 1 ;;
esac

for item in HVN.md HVN.defaults.md commands skills templates docs mcp profiles core adapters VERSION HOST; do
  [ -e "$target/$item" ] || { printf 'Missing installed item: %s\n' "$target/$item" >&2; exit 1; }
done

[ -d "$target/memory/runs/archive" ] || { printf 'Missing run memory directory\n' >&2; exit 1; }

[ -f "$target/commands/hvn-help.md" ] || { printf 'Missing hvn-help command\n' >&2; exit 1; }
[ -f "$target/commands/hvn-route.md" ] || { printf 'Missing hvn-route command\n' >&2; exit 1; }
[ -f "$target/commands/hvn-memory-init.md" ] || { printf 'Missing hvn-memory-init command\n' >&2; exit 1; }
[ -f "$target/commands/hvn-memory-read.md" ] || { printf 'Missing hvn-memory-read command\n' >&2; exit 1; }
[ -f "$target/commands/hvn-memory-update.md" ] || { printf 'Missing hvn-memory-update command\n' >&2; exit 1; }
[ -f "$target/commands/hvn-question-flow.md" ] || { printf 'Missing hvn-question-flow command\n' >&2; exit 1; }
[ -f "$target/commands/hvn-spec-check.md" ] || { printf 'Missing hvn-spec-check command\n' >&2; exit 1; }
[ -f "$target/skills/hvn-core/SKILL.md" ] || { printf 'Missing hvn-core skill\n' >&2; exit 1; }
[ -f "$target/skills/hvn-router/SKILL.md" ] || { printf 'Missing hvn-router skill\n' >&2; exit 1; }
[ -f "$target/skills/hvn-run-memory/SKILL.md" ] || { printf 'Missing hvn-run-memory skill\n' >&2; exit 1; }
[ -f "$target/skills/hvn-question-flow/SKILL.md" ] || { printf 'Missing hvn-question-flow skill\n' >&2; exit 1; }
[ -f "$target/skills/hvn-debug/SKILL.md" ] || { printf 'Missing hvn-debug skill\n' >&2; exit 1; }
[ -f "$target/profiles/henry-van-ness.md" ] || { printf 'Missing Henry profile\n' >&2; exit 1; }

[ -f "$target/docs/cross-harness-architecture.md" ] || { printf 'Missing cross-harness architecture doc\n' >&2; exit 1; }
[ -f "$target/docs/compatibility-matrix.md" ] || { printf 'Missing compatibility matrix\n' >&2; exit 1; }
[ -f "$target/docs/command-mapping.md" ] || { printf 'Missing command mapping\n' >&2; exit 1; }
[ -f "$target/docs/portable-skills.md" ] || { printf 'Missing portable skills doc\n' >&2; exit 1; }
[ -f "$target/docs/spec-driven-workflow.md" ] || { printf 'Missing spec-driven workflow doc\n' >&2; exit 1; }
[ -f "$target/templates/spec-review.md" ] || { printf 'Missing spec-review template\n' >&2; exit 1; }

if [ "$host" != "shared" ]; then
  [ -f "$target/adapters/$host/README.md" ] || { printf 'Missing host adapter: %s\n' "$host" >&2; exit 1; }
fi

printf 'HVN install verified at %s\n' "$target"
