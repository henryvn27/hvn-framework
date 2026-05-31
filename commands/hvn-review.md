# hvn-review

## Purpose

Review a change for bugs, regressions, maintainability, missing tests, and release risk.

## When To Use

Use before QA or shipping any meaningful change.

## Required Inputs

- Diff, changed files, PR, artifact, or branch

## Optional Inputs

- Linear issue ID or opt-out work item
- Spec
- Plan
- Test output

## Linear Context

- Expects: issue ID, linked branch or PR, spec, plan, verification notes
- Reads: approved scope, changed artifacts, previous blockers, acceptance criteria
- Posts: findings, severity, decision, recommended next state
- Trigger: `In Review`, `review-required`
- Human approval: required to waive blocking findings

## Opt-Out Context

Post or store the review report in the declared record.

## Workflow

1. Use `hvn-review`.
2. Inspect whether the chosen skill matched the task and whether a more specific installed skill was skipped.
3. Check whether authenticity preflight was required and whether the output followed it.
4. Inspect changed behavior and adjacent contracts.
5. Identify findings that should become regression packs.
6. Prioritize findings by severity.
7. Recommend fixes or state that no blocking issues were found.
8. Sync review decision and memory update to the work item, including regression candidates and required fixes.

## Outputs And Artifacts

- `templates/review-report.md`
- `templates/linear-review-comment.md` when Linear-first mode is active
- `templates/authenticity-review.md` when UI or writing polish mattered

## Failure Cases

- If the diff is unavailable, review files and record the limitation.
- If tests were not run, list the residual risk.

## Related Commands And Skills

- Commands: `hvn-memory-read`, `hvn-memory-update`, `hvn-design`, `hvn-security`, `hvn-ship`
- Skills: `hvn-review`, `hvn-run-memory`, `hvn-linear-core`
