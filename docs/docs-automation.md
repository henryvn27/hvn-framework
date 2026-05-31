# Docs Automation

HVN documentation should improve as the framework changes, not only when someone remembers to tidy it later.

## What The Automation Does

The docs maintenance loop should:

- detect new commands, skills, guides, hosts, and examples that are not routed from the docs hub or wiki
- verify that top-level newcomer paths still exist
- verify that wiki summary pages still point at canonical docs
- catch broken local links through existing link checks
- flag places where a feature change likely requires updates to indexes, start-here pages, or the wiki home page

## Current Automation

- `./scripts/check-markdown.sh`: structural markdown checks
- `./scripts/check-links.sh`: local link validation
- `./scripts/docs-audit.sh`: docs routing, coverage, and freshness audit
- `.github/workflows/docs-maintenance.yml`: push, pull request, and scheduled docs audit

## Expected Maintenance Loop

1. A user-visible change lands in commands, skills, install, workflow, host support, or examples.
2. `docs-audit.sh` checks whether routing docs and wiki pages still cover that surface.
3. Contributors update `README.md`, `docs/start-here.md`, indexes, guides, and wiki pages when the top-level experience changes.
4. Scheduled automation reruns the audit so docs drift is surfaced even without a feature PR.

## Why This Exists

The broadest HVN risk is not missing detail. It is losing navigability as the framework grows.
The automation exists to protect the routing layer.

## Related Pages

- [wiki-maintenance.md](wiki-maintenance.md)
- [staleness-detection.md](staleness-detection.md)
- [doc-owners.md](doc-owners.md)
- [recent-doc-updates.md](recent-doc-updates.md)
