# hvn-plan

## Purpose

Convert an approved or checked spec into milestones with requirement mapping and verification gates.

## When To Use

Use after `hvn-spec` and before `hvn-build`.

## Required Inputs

- Approved or working spec

## Optional Inputs

- Linear issue ID or opt-out work item
- Discovery notes
- Test commands
- Release target

## Linear Context

- Expects: issue ID, spec comment or artifact, constraints, labels, state, related links
- Reads: approved scope, non-goals, verification expectations, risk labels
- Posts: implementation plan, approval request, verification gates, recommended `Ready for Build` state
- Trigger: `Spec Ready`, `needs-plan`
- Human approval: required before build for product-changing or risk-bearing work

## Opt-Out Context

Write the plan to the selected artifact and record approval status in the chosen work item.

## Workflow

1. Use `hvn-plan`.
2. Read the latest spec before reading chat history.
3. Run or read `hvn-spec-check`; do not plan from a spec marked too vague.
4. Read run memory and issue health.
5. Derive milestones from the spec requirements.
6. Map each phase to requirement IDs and verification criteria.
7. Define files or modules likely to change.
8. Attach verification and relevant regression packs to each phase.
9. Identify review and QA gates.
10. Post a plan comment or artifact suitable for approval.
11. Update run memory with spec version, approval state, first build phase, blockers, and linked plan.

## Outputs And Artifacts

- `templates/plan.md`
- `templates/milestone-plan.md`
- `templates/linear-plan-comment.md` when Linear-first mode is active

## Failure Cases

- If dependencies are unknown, return to discovery.
- If verification is impossible, record manual evidence required.
- If the plan includes work not mapped to the spec, revise the spec or remove that work.

## Related Commands And Skills

- Commands: `hvn-memory-read`, `hvn-memory-update`, `hvn-spec-check`, `hvn-linear-plan-comment`, `hvn-build`, `hvn-review`
- Skills: `hvn-plan`, `hvn-run-memory`, `hvn-linear-planner`
