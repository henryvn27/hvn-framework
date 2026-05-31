# Contributing Documentation

Documentation changes should keep HVN more understandable, not just larger.

## Required Behaviors

- Update docs when user-visible behavior changes.
- Route new features into indexes and wiki pages.
- Update `README.md` and `docs/start-here.md` if the newcomer path changes.
- Add an example when a new workflow is non-obvious.
- Record a concise note in `docs/recent-doc-updates.md` for meaningful doc changes.

## Minimum Doc Update Checklist

1. Update the canonical deep doc for the feature.
2. Update the relevant routing page or index.
3. Update the wiki if the top-level browse experience changed.
4. Run docs checks and repo validation.

Use [../templates/doc-change-checklist.md](../templates/doc-change-checklist.md) when preparing a PR.

## Validation

Run:

```sh
./scripts/check-markdown.sh
./scripts/check-links.sh
./scripts/docs-audit.sh
./scripts/validate-repo.sh
```
