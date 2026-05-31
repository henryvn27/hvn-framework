# Docs Automation

ORCA-HVN documentation should improve continuously instead of depending on one large manual rewrite.

## Purpose

The docs automation layer keeps the top-level docs, routing pages, and wiki aligned with the real framework surface.

## Inputs

- `README.md`
- `docs/README.md`
- `docs/information-architecture.md`
- `docs/feature-index.md`
- `docs/command-index.md`
- `docs/choose-your-path.md`
- `docs/doc-owners.md`
- `docs/staleness-detection.md`
- `docs/whats-new.md`
- `wiki/*.md`
- `commands/*.md`
- `skills/*/SKILL.md`
- major feature docs under `docs/`

## What The Automation Should Detect

- new commands without index or guide coverage
- new major features without routing from README or `docs/start-here.md`
- changed command names, guide names, or feature names that leave stale links
- guide pages whose linked feature docs changed materially
- wiki summaries that no longer match the docs surface
- top-level docs that have not been reviewed relative to recent framework changes

## Expected Automation Actions

- propose README and start-here refreshes when the top-level user story changes
- update indexes when commands or feature families are added
- draft wiki summary updates when new docs or major capabilities appear
- draft freshness notes for stale pages
- update `docs/recent-doc-updates.md` and `docs/whats-new.md` when major docs surfaces change
- surface recurring docs friction from the session improvement backlog when the same routing or clarity gap keeps recurring

## Boundaries

- do not rewrite every reference page automatically
- do not produce duplicate summary pages when links would do
- do not treat generated volume as success
- prefer routing, summary, and staleness notes over speculative rewriting
