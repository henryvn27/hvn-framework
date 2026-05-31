#!/usr/bin/env sh
set -eu

target="${HOME}/.hvn"

while [ "$#" -gt 0 ]; do
  case "$1" in
    --target) target="$2"; shift 2 ;;
    -h|--help) printf 'Usage: verify-install.sh [--target path]\n'; exit 0 ;;
    *) printf 'Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

for item in HVN.md commands skills templates docs mcp VERSION; do
  [ -e "$target/$item" ] || { printf 'Missing installed item: %s\n' "$target/$item" >&2; exit 1; }
done

[ -f "$target/commands/hvn-help.md" ] || { printf 'Missing hvn-help command\n' >&2; exit 1; }
[ -f "$target/skills/hvn-core/SKILL.md" ] || { printf 'Missing hvn-core skill\n' >&2; exit 1; }

printf 'HVN install verified at %s\n' "$target"
