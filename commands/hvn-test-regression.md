# hvn-test-regression

## Purpose

Verify fixes and ensure nearby behavior did not regress.

## When To Use

Use after changes responding to review, QA, bug reports, or release blockers.

## Required Inputs

- Fix summary
- Affected flows

## Optional Inputs

- Previous QA reports
- Test commands
- Acceptance criteria

## Workflow

1. Reproduce the original issue when possible.
2. Verify the fix.
3. Test adjacent flows.
4. Record remaining risk and evidence.

## Outputs And Artifacts

- `templates/regression-report.md`

## Failure Cases

- If the original issue cannot be reproduced, state why.
- If adjacent flows are unknown, inspect discovery notes or ask for scope.

## Related Commands And Skills

- Commands: `hvn-review`, `hvn-ship`
- Skills: `hvn-web-qa`, `hvn-ios-sim-qa`
