#!/usr/bin/env sh
set -eu

mode="local"
target=""

while [ "$#" -gt 0 ]; do
  case "$1" in
    --mode) mode="$2"; shift 2 ;;
    --target) target="$2"; shift 2 ;;
    -h|--help) printf 'Usage: install-codex.sh [--mode local|global] [--target path]\n'; exit 0 ;;
    *) printf 'Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

case "$mode" in
  local) target="${target:-./.codex}" ;;
  global) target="${target:-$HOME/.codex}" ;;
  *) printf 'Mode must be local or global\n' >&2; exit 1 ;;
esac

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
mkdir -p "$target/skills"

"$root/install/install.sh" --mode local --target "$target/hvn" --host codex

rm -rf "$target/skills/hvn-"* 2>/dev/null || true
cp -R "$root/skills/"* "$target/skills/"
cp "$root/adapters/codex/AGENTS.md" "$target/AGENTS.md"

printf 'Codex adapter installed to %s\n' "$target"
printf 'Skills: %s\n' "$target/skills"
printf 'Codex guidance: %s\n' "$target/AGENTS.md"
printf 'Shared HVN package: %s\n' "$target/hvn"
if [ "$mode" = "local" ]; then
  printf 'Note: local .codex/AGENTS.md may require CODEX_HOME or manual inclusion; repo-root AGENTS.md remains the safest project instruction path.\n'
fi
