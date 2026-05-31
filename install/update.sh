#!/usr/bin/env sh
set -eu

mode="local"
target=""
host="auto"
dry_run="0"
yes="0"
verbose="0"

fail() { printf '[error] %s\n' "$1" >&2; exit 1; }
info() { printf '[info] %s\n' "$1"; }
warn() { printf '[warn] %s\n' "$1"; }

usage() {
  cat <<USAGE
Usage: update.sh [options]

Options:
  --mode local|global
  --host auto|shared|claude|codex|opencode|hermes
  --target path
  --dry-run
  --yes
  --verbose
  -h, --help
USAGE
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --mode) mode="$2"; shift 2 ;;
    --target) target="$2"; shift 2 ;;
    --host) host="$2"; shift 2 ;;
    --dry-run) dry_run="1"; shift ;;
    --yes|--non-interactive) yes="1"; shift ;;
    --verbose) verbose="1"; shift ;;
    -h|--help) usage; exit 0 ;;
    *) fail "Unknown argument: $1" ;;
  esac
done

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"

if [ -n "$target" ] && [ -f "$target/HOST" ] && [ "$host" = "auto" ]; then
  host="$(sed -n '1p' "$target/HOST")"
fi

info "Updating HVN by refreshing managed files from this repository."
warn "Run memory is preserved by the installer."

args="--mode $mode --host $host"
[ -n "$target" ] && args="$args --target $target"
[ "$dry_run" = "1" ] && args="$args --dry-run"
[ "$yes" = "1" ] && args="$args --yes"
[ "$verbose" = "1" ] && args="$args --verbose"

# shellcheck disable=SC2086
"$root/install/install.sh" $args
