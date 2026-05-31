#!/usr/bin/env sh
set -eu

mode="local"
target=""

while [ "$#" -gt 0 ]; do
  case "$1" in
    --mode) mode="$2"; shift 2 ;;
    --target) target="$2"; shift 2 ;;
    -h|--help) printf 'Usage: install-opencode.sh [--mode local|global] [--target path]\n'; exit 0 ;;
    *) printf 'Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

case "$mode" in
  local) target="${target:-./.opencode}" ;;
  global) target="${target:-$HOME/.config/opencode}" ;;
  *) printf 'Mode must be local or global\n' >&2; exit 1 ;;
esac

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
mkdir -p "$target/skills" "$target/command"

"$root/install/install.sh" --mode local --target "$target/hvn" --host opencode

rm -rf "$target/skills/hvn-"* "$target/command/hvn-"*.md 2>/dev/null || true
cp -R "$root/skills/"* "$target/skills/"
cp "$root/commands/"hvn-*.md "$target/command/"

printf 'OpenCode adapter installed to %s\n' "$target"
printf 'Skills: %s\n' "$target/skills"
printf 'Commands: %s\n' "$target/command"
printf 'Shared HVN package: %s\n' "$target/hvn"
printf 'Next: confirm OpenCode is configured to read this local or global directory.\n'
