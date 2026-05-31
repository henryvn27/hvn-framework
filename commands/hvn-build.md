# hvn-build

## Purpose

Implement a planned change while preserving repo patterns and verification discipline.

## When To Use

Use after a plan exists or for a small change whose plan can be stated inline.

## Required Inputs

- Spec or explicit task
- Implementation plan or phase

## Optional Inputs

- Test command
- Design constraints
- Related issue

## Workflow

1. Use `hvn-build`.
2. Read relevant files before editing.
3. Make scoped changes.
4. Run verification after meaningful phases.
5. Update plan status and record remaining risks.

## Outputs And Artifacts

- Code or content changes
- Verification notes
- Updated plan when applicable

## Failure Cases

- If unrelated dirty changes exist, preserve them.
- If tests fail, diagnose before claiming completion.

## Related Commands And Skills

- Commands: `hvn-review`, `hvn-test-blind`
- Skills: `hvn-build`
