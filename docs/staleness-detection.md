# Staleness Detection

Not every doc becomes stale the same way. ORCA-HVN tracks drift by change triggers, not only by age.

## High-Risk Drift Signals

- a new command exists but is missing from `docs/command-index.md`
- a new feature doc exists but is missing from `docs/feature-index.md`
- README links no longer match the preferred start path
- wiki homepage or sidebar misses a major feature family
- host or integration behavior changes but the relevant guide does not

## Medium-Risk Drift Signals

- a guide links to commands that changed names or behavior
- examples no longer reflect the preferred paved road
- `docs/whats-new.md` no longer mentions the most recent major additions

## Refresh Triggers

- command added, renamed, or removed
- guide-worthy feature added
- compatibility shift changes recommended path
- setup guidance changes default install flow
- contributor workflow changes what docs must be updated during a PR

## Preferred Output

When drift is detected, produce:

- a `templates/doc-refresh-note.md` artifact for docs
- a `templates/wiki-update-note.md` artifact for wiki changes when needed

