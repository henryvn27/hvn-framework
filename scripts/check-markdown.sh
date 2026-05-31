#!/usr/bin/env sh
set -eu

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$root"

fail() {
  printf 'check-markdown: %s\n' "$1" >&2
  exit 1
}

find . -path './.git' -prune -o -name '*.md' -type f -print | while IFS= read -r file; do
  [ -s "$file" ] || fail "empty markdown file: $file"
  first_line="$(sed -n '1p' "$file")"
  case "$first_line" in
    '# '*|'---') ;;
    *) fail "markdown file must start with heading or frontmatter: $file" ;;
  esac
done

printf 'check-markdown: ok\n'
