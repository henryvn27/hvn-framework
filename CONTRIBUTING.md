# Contributing

Thank you for improving HVN. Contributions should make the framework clearer, more verifiable, or easier to install.

## Standards

- Keep commands, skills, docs, and templates internally consistent.
- Preserve the separation between blind QA, briefed QA, and informed QA.
- Avoid unsupported claims about tool support or test coverage.
- Write concrete guidance that an agent can follow.
- Update routing docs and wiki pages when the top-level user experience changes.
- Add or revise examples when a new behavior is non-obvious.
- Record meaningful doc changes in `docs/recent-doc-updates.md`.
- Run `./scripts/validate-repo.sh` before opening a pull request.

## Pull Request Checklist

- The change has a clear reason.
- New commands include required inputs, workflow, outputs, failures, and related skills.
- New skills include trigger rules, workflow, outputs, quality bar, and failure modes.
- New features are linked from the relevant docs indexes and wiki pages.
- Documentation links resolve.
- Scripts remain portable POSIX shell unless a file explicitly targets another shell.
- The changelog is updated for user-visible framework changes.

## Development

Use the validation script as the main local check:

```sh
./scripts/validate-repo.sh
```

For markdown-only changes:

```sh
./scripts/check-markdown.sh
./scripts/check-links.sh
./scripts/docs-audit.sh
```

For documentation architecture or onboarding changes:

```sh
./scripts/docs-audit.sh
./scripts/validate-repo.sh
```
