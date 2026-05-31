# Wiki Maintenance

The wiki is a summary-and-routing layer for GitHub readers.
It is not the canonical location for deep behavioral detail.

## Rules

- Keep wiki pages short enough to scan quickly.
- Summarize and route rather than duplicating deep docs.
- Link from wiki pages into canonical docs under `docs/` whenever detail matters.
- Keep `wiki/Home.md`, `wiki/_Sidebar.md`, and `wiki/Feature-Index.md` in sync with the docs hub and indexes.

## When To Update The Wiki

- A new top-level feature area is added
- A new host path becomes important to newcomers
- The recommended reading order changes
- A command or guide meaningfully changes the first-run experience

## Minimum Sync Targets

- `README.md`
- `docs/start-here.md`
- `docs/feature-index.md`
- `docs/command-index.md`
- `docs/choose-your-path.md`
- `docs/whats-new.md`

## Audit Expectations

`./scripts/docs-audit.sh` should fail if key wiki pages are missing or if canonical routing files no longer mention important surfaces.
