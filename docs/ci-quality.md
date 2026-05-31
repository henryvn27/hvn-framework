# CI Quality

HVN CI should prove that the framework's reliability layer is real, linked, and structurally complete.

## Required Checks

The repository CI should:

- validate required files and directories
- verify links across docs, commands, skills, templates, and examples
- verify the reliability docs and contracts exist
- verify the starter eval set exists and is non-trivial
- verify install flows still work after framework changes

## Workflows

- `.github/workflows/ci.yml`: repository-wide validation
- `.github/workflows/evals.yml`: starter eval and reliability artifact checks
- `.github/workflows/install-test.yml`: installation smoke test

## What CI Does Not Try To Do

CI does not pretend to fully evaluate agent quality. It only enforces that the framework ships with:

- explicit contracts
- cross-linked docs
- baseline eval material
- installable assets

Human review still matters for command quality, examples, and rubric usefulness.
