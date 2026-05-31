#!/usr/bin/env sh
set -eu

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$root"

printf 'HVN doctor\n'

for bin in sh find grep sed cp rm mkdir; do
  command -v "$bin" >/dev/null 2>&1 || { printf 'Missing dependency: %s\n' "$bin" >&2; exit 1; }
done

./scripts/validate-repo.sh

if [ -d "$HOME/.hvn" ]; then
  ./install/verify-install.sh --target "$HOME/.hvn"
else
  printf 'No global install found at %s/.hvn\n' "$HOME"
fi

./install/detect-host.sh

printf 'doctor: ok\n'
