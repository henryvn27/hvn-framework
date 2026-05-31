# hvn-ship

## Purpose

Prepare a change for release with final validation, handoff, and rollback notes.

## When To Use

Use after implementation, review, QA, and required fixes are complete.

## Required Inputs

- Completed change summary
- Verification evidence

## Optional Inputs

- Release notes
- Version target
- Deployment procedure

## Workflow

1. Use `hvn-ship`.
2. Confirm acceptance criteria and gates.
3. Run final validation.
4. Prepare release notes and rollback guidance.
5. Identify follow-up issues.

## Outputs And Artifacts

- `templates/ship-checklist.md`
- Release summary

## Failure Cases

- If a gate is incomplete, stop and route to the relevant command.
- If validation cannot run, record the exact blocker.

## Related Commands And Skills

- Commands: `hvn-retro`, `hvn-test-regression`
- Skills: `hvn-ship`
