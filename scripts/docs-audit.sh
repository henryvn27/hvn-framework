#!/usr/bin/env sh
set -eu

root="$(CDPATH= cd -- "$(dirname -- "$0")/.." && pwd)"
cd "$root"

fail() {
  printf 'docs-audit: %s\n' "$1" >&2
  exit 1
}

require_file() {
  [ -f "$1" ] || fail "missing required file: $1"
}

require_contains() {
  file="$1"
  pattern="$2"
  grep -F "$pattern" "$file" >/dev/null 2>&1 || fail "missing route '$pattern' in $file"
}

for file in \
  README.md \
  docs/README.md \
  docs/information-architecture.md \
  docs/start-here.md \
  docs/quickstart.md \
  docs/intro.md \
  docs/feature-index.md \
  docs/command-index.md \
  docs/use-case-map.md \
  docs/choose-your-path.md \
  docs/glossary.md \
  docs/concept-map.md \
  docs/docs-automation.md \
  docs/wiki-maintenance.md \
  docs/staleness-detection.md \
  docs/doc-owners.md \
  docs/contributing-docs.md \
  docs/whats-new.md \
  docs/recent-doc-updates.md \
  commands/hvn-docs.md \
  skills/hvn-docs-system/SKILL.md \
  templates/doc-refresh-note.md \
  templates/wiki-update-note.md \
  templates/doc-metadata.md \
  templates/doc-change-checklist.md \
  wiki/Home.md \
  wiki/Getting-Started.md \
  wiki/Core-Concepts.md \
  wiki/Feature-Index.md \
  wiki/Workflow-Index.md \
  wiki/Commands.md \
  wiki/Hosts-and-Harnesses.md \
  wiki/Automation.md \
  wiki/Examples.md \
  wiki/FAQ.md \
  wiki/Whats-New.md \
  wiki/_Sidebar.md \
  wiki/_Footer.md \
  docs/assets/orca.png \
  wiki/assets/orca.png
do
  require_file "$file"
done

require_contains README.md "docs/start-here.md"
require_contains README.md "docs/README.md"
require_contains README.md "wiki/Home.md"
require_contains docs/README.md "start-here.md"
require_contains docs/README.md "../wiki/Home.md"
require_contains docs/start-here.md "choose-your-path.md"
require_contains wiki/Home.md "../docs/README.md"
require_contains wiki/_Sidebar.md "Home.md"
require_contains docs/whats-new.md "../wiki/Whats-New.md"

for command_file in commands/hvn-*.md; do
  command_name="$(basename "$command_file" .md)"
  case "$command_name" in
    hvn-help)
      continue
      ;;
  esac
  grep -F "$command_name" docs/command-index.md >/dev/null 2>&1 || fail "command missing from docs/command-index.md: $command_name"
done

for guide_file in docs/guides/*.md; do
  guide_name="$(basename "$guide_file")"
  grep -F "$guide_name" docs/choose-your-path.md >/dev/null 2>&1 || fail "guide missing from docs/choose-your-path.md: $guide_name"
done

for wiki_page in Home.md Getting-Started.md Core-Concepts.md Feature-Index.md Workflow-Index.md Commands.md Hosts-and-Harnesses.md Automation.md Examples.md FAQ.md Whats-New.md; do
  grep -F "$wiki_page" wiki/_Sidebar.md >/dev/null 2>&1 || fail "wiki sidebar missing page: $wiki_page"
done

./scripts/check-links.sh

printf 'docs-audit: ok\n'
