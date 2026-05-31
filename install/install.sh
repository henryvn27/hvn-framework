#!/usr/bin/env sh
set -eu

mode="local"
target=""
host="shared"

while [ "$#" -gt 0 ]; do
  case "$1" in
    --mode) mode="$2"; shift 2 ;;
    --target) target="$2"; shift 2 ;;
    --host) host="$2"; shift 2 ;;
    -h|--help)
      printf 'Usage: install.sh [--mode local|global] [--target path] [--host shared|claude|codex|opencode|hermes]\n'
      exit 0
      ;;
    *) printf 'Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

case "$mode" in
  local) target="${target:-./.hvn}" ;;
  global) target="${target:-$HOME/.hvn}" ;;
  *) printf 'Mode must be local or global\n' >&2; exit 1 ;;
esac

case "$host" in
  shared|claude|codex|opencode|hermes) ;;
  *) printf 'Host must be shared, claude, codex, opencode, or hermes\n' >&2; exit 1 ;;
esac

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
mkdir -p "$target"

for item in HVN.md HVN.defaults.md commands skills templates docs mcp profiles core adapters; do
  [ -e "$root/$item" ] || { printf 'Missing source item: %s\n' "$item" >&2; exit 1; }
  rm -rf "$target/$item"
  cp -R "$root/$item" "$target/$item"
done

mkdir -p "$target/memory/runs/archive"

cat > "$target/VERSION" <<VERSION
0.1.0
VERSION

cat > "$target/HOST" <<HOST
$host
HOST

printf 'HVN installed to %s\n' "$target"
printf 'Host adapter: %s\n' "$host"
printf 'Defaults: %s\n' "$target/HVN.defaults.md"
printf 'Henry profile: %s\n' "$target/profiles/henry-van-ness.md"
printf 'Linear setup guide: %s\n' "$target/docs/linear-setup.md"
printf 'Linear-first guidance: %s\n' "$target/docs/linear-guidance.md"
printf 'Cross-harness guide: %s\n' "$target/docs/cross-harness-architecture.md"
printf 'Run memory directory: %s\n' "$target/memory/runs"
if [ "$host" != "shared" ]; then
  printf 'Host guides: %s\n' "$target/docs/hosts"
  printf 'Adapter guide: %s\n' "$target/adapters/$host/README.md"
fi
printf 'Opt-out mode: choose a durable system of record and map HVN gates there.\n'
