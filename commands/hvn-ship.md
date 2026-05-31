# hvn-ship

## Purpose

Prepare a change for release with final validation, handoff, done-state evidence, and rollback notes.

## When To Use

Use after implementation, review, QA, and required fixes are complete.

## Required Inputs

- Completed change summary
- Verification evidence

## Optional Inputs

- Linear issue ID or opt-out work item
- Release notes
- Version target
- Deployment procedure

## Linear Context

- Expects: issue ID, spec, plan approval, implementation evidence, review, QA, security status, linked artifacts
- Reads: the full issue thread and linked release evidence
- Posts: ship readiness checklist, known risks, rollback guidance, done recommendation or blockers
- Trigger: `Ready to Ship`, `ready-to-ship`
- Human approval: required when release ownership or risk acceptance is manual

## Opt-Out Context

Write ship readiness to the chosen record before marking work complete.

## Workflow

1. Use `hvn-ship`.
2. Confirm acceptance criteria and gates.
3. Run final validation.
4. Prepare release notes and rollback guidance.
5. Identify follow-up issues.
6. Recommend done only with evidence.

## Outputs And Artifacts

- `templates/ship-checklist.md`
- `templates/linear-ship-comment.md` when Linear-first mode is active
- Release summary

## Failure Cases

- If a gate is incomplete, stop and route to the relevant command.
- If validation cannot run, record the exact blocker.

## Related Commands And Skills

- Commands: `hvn-linear-ship-check`, `hvn-retro`, `hvn-test-regression`
- Skills: `hvn-ship`, `hvn-linear-release`
