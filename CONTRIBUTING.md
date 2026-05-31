# Contributing

Thank you for improving HVN. Contributions should make the framework clearer, more verifiable, or easier to install.

## Standards

- Keep commands, skills, docs, and templates internally consistent.
- Preserve the separation between blind QA, briefed QA, and informed QA.
- Avoid unsupported claims about tool support or test coverage.
- Write concrete guidance that an agent can follow.
- Run `./scripts/validate-repo.sh` before opening a pull request.

## Pull Request Checklist

- The change has a clear reason.
- New commands include required inputs, workflow, outputs, failures, and related skills.
- New skills include trigger rules, workflow, outputs, quality bar, and failure modes.
- Documentation links resolve.
- Scripts remain portable POSIX shell unless a file explicitly targets another shell.
- The changelog is updated for user-visible framework changes.
- Multi-commit framework iterations use `templates/iteration-log.md` or an equivalent PR summary.

## Development

Use the validation script as the main local check:

```sh
./scripts/validate-repo.sh
```

For markdown-only changes:

```sh
./scripts/check-markdown.sh
./scripts/check-links.sh
```

For version-control and iteration expectations, read `docs/version-control.md`.
