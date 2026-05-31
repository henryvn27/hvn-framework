#!/usr/bin/env sh
set -eu

mode="local"
target=""

while [ "$#" -gt 0 ]; do
  case "$1" in
    --mode) mode="$2"; shift 2 ;;
    --target) target="$2"; shift 2 ;;
    -h|--help)
      printf 'Usage: install.sh [--mode local|global] [--target path]\n'
      exit 0
      ;;
    *) printf 'Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

case "$mode" in
  local) target="${target:-./.orca-hvn}" ;;
  global) target="${target:-$HOME/.orca-hvn}" ;;
  *) printf 'Mode must be local or global\n' >&2; exit 1 ;;
esac

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
mkdir -p "$target"

for item in ORCA-HVN.md commands skills templates docs mcp; do
  [ -e "$root/$item" ] || { printf 'Missing source item: %s\n' "$item" >&2; exit 1; }
  rm -rf "$target/$item"
  cp -R "$root/$item" "$target/$item"
done

cat > "$target/VERSION" <<VERSION
0.1.0
VERSION

printf 'ORCA-HVN installed to %s\n' "$target"
printf 'Linear setup guide: %s\n' "$target/docs/linear-setup.md"
printf 'Linear-first guidance: %s\n' "$target/docs/linear-guidance.md"
printf 'Opt-out mode: choose a durable system of record and map ORCA-HVN gates there.\n'
