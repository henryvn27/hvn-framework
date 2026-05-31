#!/usr/bin/env sh
set -eu

target="${HOME}/.orca-hvn"

while [ "$#" -gt 0 ]; do
  case "$1" in
    --target) target="$2"; shift 2 ;;
    -h|--help) printf 'Usage: verify-install.sh [--target path]\n'; exit 0 ;;
    *) printf 'Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

for item in ORCA-HVN.md README.md commands skills templates docs mcp install scripts VERSION; do
  [ -e "$target/$item" ] || { printf 'Missing installed item: %s\n' "$target/$item" >&2; exit 1; }
done

[ -f "$target/commands/orca-help.md" ] || { printf 'Missing orca-help command\n' >&2; exit 1; }
[ -f "$target/skills/orca-install-help/SKILL.md" ] || { printf 'Missing orca-install-help skill\n' >&2; exit 1; }
[ -f "$target/docs/install.md" ] || { printf 'Missing install guide\n' >&2; exit 1; }
[ -x "$target/install/doctor.sh" ] || { printf 'Missing executable install doctor\n' >&2; exit 1; }
[ -x "$target/install/verify-install.sh" ] || { printf 'Missing executable install verifier\n' >&2; exit 1; }

printf 'ORCA-HVN install verified at %s\n' "$target"
