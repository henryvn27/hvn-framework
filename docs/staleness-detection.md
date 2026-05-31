# Staleness Detection

Documentation drift usually appears first in routing pages, not deep reference docs.

## What Counts As Stale

- A new command exists but is not represented in the command index
- A new guide exists but is not reachable from the start-here or path chooser flow
- A host page changed but the wiki host page still describes the old path
- Top-level pages link to removed docs
- "What's new" pages do not mention meaningful user-visible additions

## Detection Signals

- Missing entries in indexes
- Missing links from start-here pages
- Broken local links
- Missing doc ownership metadata
- Changed feature surface without routing updates

## Review Triggers

- New file under `commands/`
- New file under `skills/`
- New guide or example
- User-visible install changes
- New host support or behavior
- Top-level workflow changes

## Freshness Policy

- Routing docs should be reviewed whenever the top-level user experience changes.
- Deep reference docs should be reviewed when their feature behavior changes.
- Wiki pages should be reviewed whenever the docs hub, indexes, or newcomer flow changes.
