#!/usr/bin/env sh
set -eu

target="${HOME}/.hvn"
host="shared"
verbose="0"
smoke="0"

fail() { printf '[error] %s\n' "$1" >&2; exit 1; }
ok() { printf '[ok] %s\n' "$1"; }
check_path() {
  [ -e "$1" ] || fail "Missing: $1"
  [ "$verbose" = "1" ] && ok "$1"
}
check_file() {
  [ -f "$1" ] || fail "Missing file: $1"
  [ "$verbose" = "1" ] && ok "$1"
}
check_dir() {
  [ -d "$1" ] || fail "Missing directory: $1"
  [ "$verbose" = "1" ] && ok "$1"
}

usage() {
  cat <<USAGE
Usage: verify-install.sh [options]

Options:
  --target path                       HVN install target.
  --host shared|claude|codex|opencode|hermes
  --smoke                             Run lightweight smoke checks.
  --verbose                           Print every checked path.
  -h, --help                          Show help.
USAGE
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --target) target="$2"; shift 2 ;;
    --host) host="$2"; shift 2 ;;
    --smoke) smoke="1"; shift ;;
    --verbose) verbose="1"; shift ;;
    -h|--help) usage; exit 0 ;;
    *) fail "Unknown argument: $1" ;;
  esac
done

case "$host" in
  shared|claude|codex|opencode|hermes) ;;
  *) fail "Host must be shared, claude, codex, opencode, or hermes" ;;
esac

printf '== HVN verify ==\n'
printf 'Target: %s\n' "$target"
printf 'Host: %s\n' "$host"

for item in HVN.md HVN.defaults.md commands skills templates docs mcp profiles core adapters VERSION HOST; do
  check_path "$target/$item"
done

check_dir "$target/memory/runs/archive"

for file in \
  commands/hvn-help.md \
  commands/hvn-route.md \
  commands/hvn-memory-init.md \
  commands/hvn-memory-read.md \
  commands/hvn-memory-update.md \
  commands/hvn-question-flow.md \
  commands/hvn-spec-check.md \
  skills/hvn-core/SKILL.md \
  skills/hvn-router/SKILL.md \
  skills/hvn-run-memory/SKILL.md \
  skills/hvn-question-flow/SKILL.md \
  skills/hvn-debug/SKILL.md \
  profiles/henry-van-ness.md \
  docs/cross-harness-architecture.md \
  docs/compatibility-matrix.md \
  docs/command-mapping.md \
  docs/portable-skills.md \
  docs/spec-driven-workflow.md \
  docs/installation-architecture.md \
  docs/first-run.md \
  templates/spec-review.md
do
  check_file "$target/$file"
done

if [ "$host" != "shared" ]; then
  check_file "$target/adapters/$host/README.md"
  base_dir="$(dirname "$target")"
  case "$host" in
    claude)
      check_dir "$base_dir/skills"
      check_dir "$base_dir/commands"
      check_file "$base_dir/skills/hvn-core/SKILL.md"
      check_file "$base_dir/commands/hvn-help.md"
      ;;
    codex)
      check_dir "$base_dir/skills"
      check_file "$base_dir/skills/hvn-core/SKILL.md"
      check_file "$base_dir/AGENTS.md"
      ;;
    opencode)
      check_dir "$base_dir/skills"
      check_dir "$base_dir/command"
      check_file "$base_dir/skills/hvn-core/SKILL.md"
      check_file "$base_dir/command/hvn-help.md"
      ;;
    hermes)
      check_dir "$base_dir/skills"
      check_file "$base_dir/skills/hvn-core/SKILL.md"
      ;;
  esac
fi

if [ "$smoke" = "1" ]; then
  grep -q '^# HVN Operating Manual' "$target/HVN.md" || fail "HVN.md smoke check failed"
  grep -q '^name: hvn-core' "$target/skills/hvn-core/SKILL.md" || fail "hvn-core smoke check failed"
  ok "smoke checks passed"
fi

ok "HVN install verified at $target"
