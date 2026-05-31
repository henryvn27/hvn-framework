#!/usr/bin/env sh
set -eu

format="human"

while [ "$#" -gt 0 ]; do
  case "$1" in
    --format) format="$2"; shift 2 ;;
    -h|--help)
      printf 'Usage: detect-host.sh [--format human|plain]\n'
      exit 0
      ;;
    *) printf '[error] Unknown argument: %s\n' "$1" >&2; exit 1 ;;
  esac
done

detected=""
primary="shared"

add_hint() {
  case " $detected " in
    *" $1 "*) ;;
    *) detected="${detected}$1 " ;;
  esac
}

if [ -d ".claude" ] || [ -d "$HOME/.claude" ]; then add_hint "claude"; fi
if [ -d ".codex" ] || [ -d "$HOME/.codex" ]; then add_hint "codex"; fi
if [ -d ".opencode" ] || [ -d "$HOME/.config/opencode" ]; then add_hint "opencode"; fi
if [ -d ".hermes" ] || [ -d "$HOME/.hermes" ]; then add_hint "hermes"; fi
if command -v claude >/dev/null 2>&1; then add_hint "claude"; fi
if command -v codex >/dev/null 2>&1; then add_hint "codex"; fi
if command -v opencode >/dev/null 2>&1; then add_hint "opencode"; fi

set -- $detected
if [ "$#" -eq 1 ]; then
  primary="$1"
fi

if [ "$format" = "plain" ]; then
  printf '%s\n' "$primary"
  exit 0
fi

printf '== HVN host detection ==\n'
printf 'Detected host hints: %s\n' "${detected:-none}"
printf 'Recommended host: %s\n' "$primary"
if [ "$primary" = "shared" ] && [ -n "$detected" ]; then
  printf '[warn] Multiple host hints found. Use --host explicitly.\n'
fi
printf '\n'
printf 'Install examples:\n'
printf '  Shared:       ./install/install.sh --host shared --mode local\n'
printf '  Claude Code:  ./install/install.sh --host claude --mode local\n'
printf '  Codex CLI:    ./install/install.sh --host codex --mode global\n'
printf '  OpenCode:     ./install/install.sh --host opencode --mode local\n'
printf '  Hermes Agent: ./install/install.sh --host hermes --mode local\n'
