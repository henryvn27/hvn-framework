#!/usr/bin/env sh
set -eu

mode="local"
target=""
host="auto"
dry_run="0"
non_interactive="0"
verbose="0"
skip_verify="0"

log() { printf '%s\n' "$1"; }
info() { printf '[info] %s\n' "$1"; }
warn() { printf '[warn] %s\n' "$1"; }
fail() { printf '[error] %s\n' "$1" >&2; exit 1; }
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
Usage: install.sh [options]

Options:
  --mode local|global                 Install for this repo or current user.
  --host auto|shared|claude|codex|opencode|hermes
                                      Select host adapter. Default: auto.
  --target path                       Override install target.
  --dry-run                           Print planned operations only.
  --yes                               Non-interactive mode.
  --verbose                           Print copy operations.
  --skip-verify                       Skip post-install verification.
  -h, --help                          Show help.
USAGE
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --mode) mode="$2"; shift 2 ;;
    --target) target="$2"; shift 2 ;;
    --host) host="$2"; shift 2 ;;
    --dry-run) dry_run="1"; shift ;;
    --yes|--non-interactive) non_interactive="1"; shift ;;
    --verbose) verbose="1"; shift ;;
    --skip-verify) skip_verify="1"; shift ;;
    -h|--help) usage; exit 0 ;;
    *) fail "Unknown argument: $1" ;;
  esac
done

case "$mode" in
  local|global) ;;
  *) fail "Mode must be local or global" ;;
esac

case "$host" in
  auto|shared|claude|codex|opencode|hermes) ;;
  *) fail "Host must be auto, shared, claude, codex, opencode, or hermes" ;;
esac

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"

require_bin() {
  command -v "$1" >/dev/null 2>&1 || fail "Missing required command: $1"
}

detect_host() {
  if [ -d ".claude" ] || [ -d "$HOME/.claude" ] || command -v claude >/dev/null 2>&1; then
    printf 'claude'
    return
  fi
  if [ -d ".codex" ] || [ -d "$HOME/.codex" ] || command -v codex >/dev/null 2>&1; then
    printf 'codex'
    return
  fi
  if [ -d ".opencode" ] || [ -d "$HOME/.config/opencode" ] || command -v opencode >/dev/null 2>&1; then
    printf 'opencode'
    return
  fi
  if [ -d ".hermes" ] || [ -d "$HOME/.hermes" ]; then
    printf 'hermes'
    return
  fi
  printf 'shared'
}

default_target() {
  case "$mode:$1" in
    local:shared) printf './.hvn' ;;
    global:shared) printf '%s/.hvn' "$HOME" ;;
    local:claude) printf './.claude/hvn' ;;
    global:claude) printf '%s/.claude/hvn' "$HOME" ;;
    local:codex) printf './.codex/hvn' ;;
    global:codex) printf '%s/.codex/hvn' "$HOME" ;;
    local:opencode) printf './.opencode/hvn' ;;
    global:opencode) printf '%s/.config/opencode/hvn' "$HOME" ;;
    local:hermes) printf './.hermes/hvn' ;;
    global:hermes) printf '%s/.hermes/hvn' "$HOME" ;;
  esac
}

install_host_assets() {
  host_name="$1"
  base_dir="$(dirname "$target")"
  case "$host_name" in
    shared) return ;;
    claude)
      run mkdir -p "$base_dir/skills" "$base_dir/commands"
      run rm -rf "$base_dir/skills/hvn-"*
      run rm -f "$base_dir/commands"/hvn-*.md
      run cp -R "$root/skills/." "$base_dir/skills/"
      run cp "$root/commands"/hvn-*.md "$base_dir/commands/"
      ;;
    codex)
      run mkdir -p "$base_dir/skills"
      run rm -rf "$base_dir/skills/hvn-"*
      run cp -R "$root/skills/." "$base_dir/skills/"
      run cp "$root/adapters/codex/AGENTS.md" "$base_dir/AGENTS.md"
      ;;
    opencode)
      run mkdir -p "$base_dir/skills" "$base_dir/command"
      run rm -rf "$base_dir/skills/hvn-"*
      run rm -f "$base_dir/command"/hvn-*.md
      run cp -R "$root/skills/." "$base_dir/skills/"
      run cp "$root/commands"/hvn-*.md "$base_dir/command/"
      ;;
    hermes)
      run mkdir -p "$base_dir/skills"
      run rm -rf "$base_dir/skills/hvn-"*
      run cp -R "$root/skills/." "$base_dir/skills/"
      ;;
  esac
}

log '== HVN install =='

for bin in sh mkdir cp rm dirname; do
  require_bin "$bin"
done

[ -f "$root/HVN.md" ] || fail "Run this installer from the hvn-framework repository."
[ -d "$root/skills" ] || fail "Missing source directory: skills"
[ -d "$root/commands" ] || fail "Missing source directory: commands"

if [ "$host" = "auto" ]; then
  host="$(detect_host)"
  info "Detected host: $host"
else
  info "Selected host: $host"
fi

target="${target:-$(default_target "$host")}"

info "Mode: $mode"
info "Target: $target"
info "Dry run: $dry_run"

if [ -e "$target" ] && [ ! -f "$target/HVN.md" ]; then
  fail "Target exists but does not look like an HVN install: $target"
fi

parent="$(dirname "$target")"
run mkdir -p "$parent"

if [ "$dry_run" = "0" ]; then
  [ -w "$parent" ] || fail "Parent directory is not writable: $parent"
fi

if [ -e "$target" ]; then
  warn "Existing HVN install will be refreshed in place: $target"
  if [ "$non_interactive" = "0" ]; then
    printf 'Continue? [y/N] '
    read ans
    case "$ans" in
      y|Y|yes|YES) ;;
      *) fail "Install canceled" ;;
    esac
  fi
fi

log '== Installing shared assets =='
run mkdir -p "$target"

for item in HVN.md HVN.defaults.md commands skills templates docs mcp profiles core adapters; do
  [ -e "$root/$item" ] || fail "Missing source item: $item"
  run rm -rf "$target/$item"
  run cp -R "$root/$item" "$target/$item"
done

run mkdir -p "$target/memory/runs/archive"

if [ "$dry_run" = "0" ]; then
  printf '0.1.0\n' > "$target/VERSION"
  printf '%s\n' "$host" > "$target/HOST"
else
  printf '[dry-run] write %s/VERSION\n' "$target"
  printf '[dry-run] write %s/HOST\n' "$target"
fi

log '== Installing host adapter assets =='
install_host_assets "$host"

if [ "$skip_verify" = "0" ]; then
  log '== Verifying =='
  if [ "$dry_run" = "1" ]; then
    printf '[dry-run] %s/install/verify-install.sh --target %s --host %s\n' "$root" "$target" "$host"
  else
    "$root/install/verify-install.sh" --target "$target" --host "$host"
  fi
else
  warn "Verification skipped by request."
fi

log '== Next steps =='
printf 'HVN target: %s\n' "$target"
printf 'Host adapter: %s\n' "$host"
printf 'Verify: %s/install/verify-install.sh --target %s --host %s\n' "$root" "$target" "$host"
printf 'First run: read %s/docs/first-run.md\n' "$target"
printf 'Start: use hvn-help, then hvn-onboard or hvn-linear-intake for non-trivial work.\n'
