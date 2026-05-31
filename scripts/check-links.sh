#!/usr/bin/env sh
set -eu

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$root"

fail() {
  printf 'check-links: %s\n' "$1" >&2
  exit 1
}

find . -path './.git' -prune -o -name '*.md' -type f -print | while IFS= read -r file; do
  grep -Eo '\[[^]]+\]\(([^)#][^)]+)\)' "$file" 2>/dev/null | sed -E 's/^.*\(([^)]+)\)$/\1/' | while IFS= read -r link; do
    case "$link" in
      http://*|https://*|mailto:*|\#*) continue ;;
    esac
    target="${link%%#*}"
    [ -e "$(dirname "$file")/$target" ] || [ -e "$target" ] || fail "broken local link in $file: $link"
  done
done

printf 'check-links: ok\n'
