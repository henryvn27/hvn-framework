#!/usr/bin/env sh
set -eu

mode="local"
target=""

while [ "$#" -gt 0 ]; do
  case "$1" in
    --mode) mode="$2"; shift 2 ;;
    --target) target="$2"; shift 2 ;;
    -h|--help) printf 'Usage: install-hermes.sh [--mode local|global] [--target path]\n'; exit 0 ;;
    *) printf 'Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

case "$mode" in
  local) target="${target:-./.hermes}" ;;
  global) target="${target:-$HOME/.hermes}" ;;
  *) printf 'Mode must be local or global\n' >&2; exit 1 ;;
esac

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
mkdir -p "$target/skills"

"$root/install/install.sh" --mode local --target "$target/hvn" --host hermes

rm -rf "$target/skills/hvn-"* 2>/dev/null || true
cp -R "$root/skills/"* "$target/skills/"

printf 'Hermes adapter installed to %s\n' "$target"
printf 'Skills: %s\n' "$target/skills"
printf 'Shared HVN package: %s\n' "$target/hvn"
printf 'Next: configure Hermes to load this skill directory and map HVN commands from %s when needed.\n' "$target/hvn/commands"
