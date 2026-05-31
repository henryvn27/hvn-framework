#!/usr/bin/env sh
set -eu

mode="local"
target=""

while [ "$#" -gt 0 ]; do
  case "$1" in
    --mode) mode="$2"; shift 2 ;;
    --target) target="$2"; shift 2 ;;
    -h|--help) printf 'Usage: install-claude.sh [--mode local|global] [--target path]\n'; exit 0 ;;
    *) printf 'Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

case "$mode" in
  local) target="${target:-./.claude}" ;;
  global) target="${target:-$HOME/.claude}" ;;
  *) printf 'Mode must be local or global\n' >&2; exit 1 ;;
esac

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
mkdir -p "$target/skills" "$target/commands"

"$root/install/install.sh" --mode local --target "$target/hvn" --host claude

rm -rf "$target/skills/hvn-"* "$target/commands/hvn-"*.md 2>/dev/null || true
cp -R "$root/skills/"* "$target/skills/"
cp "$root/commands/"hvn-*.md "$target/commands/"

printf 'Claude adapter installed to %s\n' "$target"
printf 'Skills: %s\n' "$target/skills"
printf 'Commands: %s\n' "$target/commands"
printf 'Shared HVN package: %s\n' "$target/hvn"
printf 'Next: ensure Claude Code is configured to load this project or global Claude directory.\n'
