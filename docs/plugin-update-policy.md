# Plugin Update Policy

Core ORCA updates should not casually break plugin-based workflows.

## Rules

- record plugin impact during update discovery
- allow update deferral when a pinned or fragile plugin would break
- require compatibility notes when a plugin-facing contract changes
- keep optional plugins out of the forced-update path

## If Plugin State Is Unclear

Prefer:

- prompt before apply
- staged rollout
- or check-only mode
