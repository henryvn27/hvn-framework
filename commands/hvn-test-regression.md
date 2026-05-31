# hvn-test-regression

## Purpose

Verify fixes and ensure nearby behavior did not regress.

## When To Use

Use after changes responding to review, QA, bug reports, or release blockers.

## Required Inputs

- Fix summary
- Affected flows

## Optional Inputs

- Linear issue ID or opt-out work item
- Previous QA reports
- Test commands
- Acceptance criteria

## Linear Context

- Expects: issue ID, original finding, fix summary, linked PR or commit, affected flows
- Reads: prior review and QA comments, acceptance criteria, regression scope
- Posts: regression result, adjacent coverage, remaining risk, recommended next state
- Trigger: `regression`, `fix-ready`, reopened QA finding
- Human approval: required to accept unresolved regression risk

## Opt-Out Context

Store regression evidence in the chosen record.

## Workflow

1. Reproduce the original issue when possible.
2. Verify the fix.
3. Test adjacent flows.
4. Record remaining risk and evidence.
5. Sync the result to the work item.

## Outputs And Artifacts

- `templates/regression-report.md`

## Failure Cases

- If the original issue cannot be reproduced, state why.
- If adjacent flows are unknown, inspect discovery notes or ask for scope.

## Related Commands And Skills

- Commands: `hvn-review`, `hvn-linear-qa-report`, `hvn-ship`
- Skills: `hvn-web-qa`, `hvn-ios-sim-qa`, `hvn-linear-qa`
