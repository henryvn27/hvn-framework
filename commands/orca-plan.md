# orca-plan

## Purpose

Convert a spec into implementation phases with verification gates.

## When To Use

Use after `orca-spec` and before `orca-build`.

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

1. Use `orca-plan`.
2. Break work into small phases.
3. Define files or modules likely to change.
4. Attach verification to each phase.
5. Identify review and QA gates.
6. Post a plan comment or artifact suitable for approval.

## Outputs And Artifacts

- `templates/plan.md`
- `templates/approval-request.md` when risk requires an approval gate
- `templates/linear-plan-comment.md` when Linear-first mode is active

## Failure Cases

- If dependencies are unknown, return to discovery.
- If verification is impossible, record manual evidence required.

## Related Commands And Skills

- Commands: `orca-linear-plan-comment`, `orca-build`, `orca-review`
- Skills: `orca-plan`, `orca-linear-planner`
