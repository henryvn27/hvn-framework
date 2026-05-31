#!/usr/bin/env sh
set -eu

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
mode="linear-first"
target="orca-linear-setup.md"

while [ "$#" -gt 0 ]; do
  case "$1" in
    --mode) mode="$2"; shift 2 ;;
    --target) target="$2"; shift 2 ;;
    -h|--help)
      printf 'Usage: linear-setup.sh [--mode linear-first|opt-out] [--target path]\n'
      exit 0
      ;;
    *) printf 'Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

case "$mode" in
  linear-first|opt-out) ;;
  *) printf 'Mode must be linear-first or opt-out\n' >&2; exit 1 ;;
esac

mkdir -p "$(dirname "$target")"

{
  printf '# ORCA-HVN Linear Setup Packet\n\n'
  printf '## Mode\n\n%s\n\n' "$mode"
  printf '## Setup Guide\n\nRead `%s`.\n\n' "$root/docs/linear-setup.md"
  printf '## Agent Guidance\n\nPaste or adapt `%s` into Linear workspace, team, or project guidance.\n\n' "$root/docs/linear-guidance.md"
  printf '## Checklist\n\n'
  sed 's/^/> /' "$root/templates/linear-setup-checklist.md"
  printf '\n## Notes\n\n'
  if [ "$mode" = "linear-first" ]; then
    printf 'Configure Linear access through your agent client or MCP. Do not store credentials in this file.\n'
  else
    printf 'Choose a durable non-Linear record and map ORCA-HVN gates before starting non-trivial work.\n'
  fi
} > "$target"

printf 'Wrote ORCA-HVN setup packet to %s\n' "$target"
