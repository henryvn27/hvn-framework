# orca-linear-plan-comment

## Purpose

Create a Linear-ready implementation plan comment that requests approval when required.

## When To Use

Use after `orca-plan` or when an issue needs a build plan posted for review.

## Required Inputs

- Linear issue ID
- Spec or task scope
- Proposed phases

## Optional Inputs

- Verification commands
- Risk notes
- Branch strategy

## Linear Context

- Reads: issue description, spec comments, constraints, related issues, labels
- Posts: plan phases, verification, risks, approval request, recommended next state
- Trigger: `Spec Ready`, `needs-plan`
- Human approval: required before build for product-changing work

## Workflow

1. Convert the plan into an issue-thread comment.
2. Include phases, touched areas, verification, risks, and approval request.
3. State what will not be changed.
4. Recommend `Ready for Build` only after approval.

## Outputs And Artifacts

- Comment based on `templates/linear-plan-comment.md`

## Failure Cases

- If spec is ambiguous, return to `orca-linear-intake` or `orca-spec`.
- If no verification is possible, call that out before approval.

## Related Commands And Skills

- Commands: `orca-plan`, `orca-build`
- Skills: `orca-linear-planner`, `orca-plan`
