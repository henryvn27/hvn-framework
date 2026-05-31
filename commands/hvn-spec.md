# hvn-spec

## Purpose

Create the implementation contract for a project, feature, or fix.

## When To Use

Use after onboarding or discovery, and before planning non-trivial implementation.

## Required Inputs

- Goal
- User or system behavior
- Constraints

## Optional Inputs

- Linear issue ID or opt-out work item
- Intake summary
- Discovery notes
- Research brief

## Linear Context

- Expects: issue title, description, comments, labels, state, project, links, and related issues
- Reads: user request, clarified scope, constraints, previous questions, non-goals
- Posts: spec comment or linked spec artifact, open questions, recommended `Spec Ready` state
- Trigger: `Ready for Spec`, `needs-spec`, or issue delegated to a spec agent
- Human approval: required before build when the spec changes product behavior, data, security, billing, or public UX

## Opt-Out Context

Write the spec to `templates/spec.md` or an equivalent artifact and reference it from the chosen work item.

## Workflow

1. Use `hvn-route` when the work is non-trivial or skill-sensitive.
2. Check issue health and read or initialize run memory.
3. Use `hvn-question-flow` in feature clarification, bug clarification, or research scoping mode when required spec fields are missing.
4. Use `hvn-spec`.
5. Define goal, users, scenarios, requirements, non-goals, acceptance criteria, and risks.
6. Identify whether authenticity preflight and an aesthetic profile are required.
7. Preserve existing stack and conventions unless the user requested redesign or rewrite.
8. Separate confirmed facts from assumptions.
9. Ask for approval when the spec changes project direction.
10. Post or attach the spec to the work item and update run memory with approved scope, assumptions, and open questions.

## Interactive Question Flow

- Uses interactive flow: conditional
- Default round size: one missing-spec question
- Collects: behavior, actor, acceptance criteria, non-goals, constraints, risky assumptions
- Stop condition: the spec can be written with clear assumptions and unresolved questions
- Final artifact: `templates/spec.md` plus optional `templates/clarification-summary.md`

## Outputs And Artifacts

- `templates/spec.md`
- `templates/clarification-summary.md`
- `templates/linear-spec-comment.md` when Linear-first mode is active

## Failure Cases

- If acceptance criteria cannot be tested, revise them.
- If scope is too broad, split into separate work items.

## Related Commands And Skills

- Commands: `hvn-question-flow`, `hvn-memory-init`, `hvn-memory-read`, `hvn-memory-update`, `hvn-linear-plan-comment`, `hvn-plan`, `hvn-research`
- Skills: `hvn-question-flow`, `hvn-spec`, `hvn-run-memory`, `hvn-linear-planner`
