# hvn-review

## Purpose

Review a change for bugs, regressions, maintainability, missing tests, and release risk.

## When To Use

Use before QA or shipping any meaningful change.

## Required Inputs

- Diff or changed files

## Optional Inputs

- Spec
- Plan
- Test output

## Workflow

1. Use `hvn-review`.
2. Inspect changed behavior and adjacent contracts.
3. Prioritize findings by severity.
4. Recommend fixes or state that no blocking issues were found.

## Outputs And Artifacts

- `templates/review-report.md`

## Failure Cases

- If the diff is unavailable, review files and record the limitation.
- If tests were not run, list the residual risk.

## Related Commands And Skills

- Commands: `hvn-design`, `hvn-security`, `hvn-ship`
- Skills: `hvn-review`
