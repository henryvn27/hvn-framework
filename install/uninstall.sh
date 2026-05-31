#!/usr/bin/env sh
set -eu

target="${HOME}/.hvn"
host="shared"
dry_run="0"
yes="0"
keep_memory="1"
verbose="0"

fail() { printf '[error] %s\n' "$1" >&2; exit 1; }
info() { printf '[info] %s\n' "$1"; }
warn() { printf '[warn] %s\n' "$1"; }
run() {
  if [ "$dry_run" = "1" ]; then
    printf '[dry-run] %s\n' "$*"
  else
    [ "$verbose" = "1" ] && printf '[run] %s\n' "$*"
    "$@"
  fi
}

usage() {
  cat <<USAGE
Usage: uninstall.sh [options]

Options:
  --target path                       HVN install target.
  --host shared|claude|codex|opencode|hermes
  --dry-run                           Print removal plan only.
  --yes                               Do not prompt.
  --remove-memory                     Remove run memory with the install.
  --verbose                           Print removal commands.
  -h, --help                          Show help.
USAGE
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --target) target="$2"; shift 2 ;;
    --host) host="$2"; shift 2 ;;
    --dry-run) dry_run="1"; shift ;;
    --yes|--non-interactive) yes="1"; shift ;;
    --remove-memory) keep_memory="0"; shift ;;
    --verbose) verbose="1"; shift ;;
    -h|--help) usage; exit 0 ;;
    *) fail "Unknown argument: $1" ;;
  esac
done

case "$host" in
  shared|claude|codex|opencode|hermes) ;;
  *) fail "Host must be shared, claude, codex, opencode, or hermes" ;;
esac

[ -f "$target/HVN.md" ] || fail "Refusing to remove non-HVN target: $target"
[ -d "$target/commands" ] || fail "Refusing to remove target without commands: $target"
[ -d "$target/skills" ] || fail "Refusing to remove target without skills: $target"
[ -f "$target/HVN.defaults.md" ] || fail "Refusing to remove target without defaults: $target"

base_dir="$(dirname "$target")"

info "Target: $target"
info "Host: $host"
info "Keep memory: $keep_memory"

if [ "$yes" = "0" ]; then
  printf 'Remove HVN-managed files from this target? [y/N] '
  read ans
  case "$ans" in
    y|Y|yes|YES) ;;
    *) fail "Uninstall canceled" ;;
  esac
fi

if [ "$keep_memory" = "1" ] && [ -d "$target/memory" ] && [ "$dry_run" = "0" ]; then
  backup="$base_dir/hvn-memory-backup-$(date +%Y%m%d%H%M%S)"
  run cp -R "$target/memory" "$backup"
  info "Run memory preserved at: $backup"
fi

case "$host" in
  claude)
    run rm -rf "$base_dir/skills"/hvn-*
    run rm -f "$base_dir/commands"/hvn-*.md
    ;;
  codex)
    run rm -rf "$base_dir/skills"/hvn-*
    ;;
  opencode)
    run rm -rf "$base_dir/skills"/hvn-*
    run rm -f "$base_dir/command"/hvn-*.md
    ;;
  hermes)
    run rm -rf "$base_dir/skills"/hvn-*
    ;;
esac

run rm -rf "$target"
info "HVN removed from $target"
