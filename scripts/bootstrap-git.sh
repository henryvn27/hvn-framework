#!/usr/bin/env sh
set -eu

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$root"

if [ -d .git ]; then
  printf 'bootstrap-git: git repository already exists\n'
else
  git init
  printf 'bootstrap-git: initialized git repository\n'
fi

git add .
git commit -m "Initial ORCA Framework release" || {
  printf 'bootstrap-git: commit skipped because there may be no staged changes or git identity is missing\n' >&2
  exit 1
}
