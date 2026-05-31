# hvn-spec-check

## Purpose

Evaluate whether a spec is precise enough to plan and execute safely.

## When To Use

Use before planning non-trivial work, after spec revisions, or whenever implementation would require guessing.

## Required Inputs

- Spec artifact, Linear spec comment, or opt-out spec record

## Optional Inputs

- Onboarding intake
- Discovery notes
- Requirements split
- Run memory
- Linear issue

## Linear Context

- Expects: issue ID, spec comment or linked spec artifact, current state, and blockers
- Reads: issue context, comments, linked artifacts, run memory, and latest spec
- Posts: spec review decision, blocking gaps, clarification questions, and recommended next state
- Trigger: `Spec Ready`, `needs-spec-check`, before `Ready for Build`
- Human approval: required to waive blocking gaps for risky work

## Opt-Out Context

Write the review to `templates/spec-review.md` and link it from the chosen work item.

## Workflow

1. Read the latest spec first.
2. Confirm the spec references the correct Linear issue or opt-out work item.
3. Check problem, objective, v1 scope, later scope, out-of-scope, users, constraints, assumptions, edge cases, behavior, data or API implications, area of change, acceptance criteria, verification criteria, and risk notes.
4. Identify solutioning that appears before the problem is defined.
5. Identify scope creep or future-phase work mixed into v1.
6. Decide whether the spec is ready for planning, needs clarification, or is too vague to proceed.
7. Produce `templates/spec-review.md`.
8. Update run memory with spec status and next action.
9. Sync the review to Linear or the opt-out record.

## Outputs And Artifacts

- `templates/spec-review.md`
- Linear spec-check comment when Linear-first mode is active
- Run memory update

## Failure Cases

- If no spec exists, route to `hvn-onboard` or `hvn-spec`.
- If acceptance criteria are missing, mark the spec as needs clarification or too vague.
- If verification criteria are missing, block planning until the spec is revised or the risk is explicitly accepted.

## Related Commands And Skills

- Commands: `hvn-onboard`, `hvn-spec`, `hvn-plan`, `hvn-question-flow`
- Skills: `hvn-spec`, `hvn-question-flow`, `hvn-run-memory`
