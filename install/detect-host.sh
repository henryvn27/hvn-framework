#!/usr/bin/env sh
set -eu

detected=""

if [ -d ".claude" ] || [ -d "$HOME/.claude" ]; then
  detected="${detected}claude "
fi

if [ -d ".codex" ] || [ -d "$HOME/.codex" ]; then
  detected="${detected}codex "
fi

if [ -d ".opencode" ] || [ -d "$HOME/.config/opencode" ]; then
  detected="${detected}opencode "
fi

if [ -d ".hermes" ] || [ -d "$HOME/.hermes" ]; then
  detected="${detected}hermes "
fi

if command -v claude >/dev/null 2>&1; then
  detected="${detected}claude-cli "
fi

if command -v codex >/dev/null 2>&1; then
  detected="${detected}codex-cli "
fi

if command -v opencode >/dev/null 2>&1; then
  detected="${detected}opencode-cli "
fi

printf 'Detected host hints: %s\n' "${detected:-none}"
printf 'Recommended explicit installers:\n'
printf '  Claude Code:  ./install/install-claude.sh --mode local\n'
printf '  Codex CLI:    ./install/install-codex.sh --mode global\n'
printf '  OpenCode:     ./install/install-opencode.sh --mode local\n'
printf '  Hermes Agent: ./install/install-hermes.sh --mode local\n'
printf 'Use explicit host selection when more than one hint is present.\n'
