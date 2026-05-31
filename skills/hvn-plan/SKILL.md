---
name: hvn-plan
description: Turn an approved or checked spec into milestone phases with verification gates.
---

# HVN Plan

## What This Skill Is

A planning workflow for converting the latest approved spec into executable, reviewable milestones.

## Trigger

Use after a spec exists and before implementation begins.

## Do Not Trigger

Do not use when the user explicitly asks only for a review or explanation.

## Required Inputs

- Latest spec or task contract

## Optional Inputs

- Linear issue ID or opt-out work item
- Discovery notes
- Verification commands
- Risk areas

## Exact Workflow

1. Use `hvn-router` to record selected skill and preserve-stack posture.
2. Read the latest approved or checked spec from Linear or the opt-out record.
3. Refuse to plan from loose chat when a non-trivial spec is missing.
4. Read `hvn-spec-check` output when available.
5. Break the work into milestones derived from spec requirements.
6. Map every task to a requirement or verification criterion.
7. Name expected files or system areas.
8. Attach verification to each phase.
9. Identify dependencies and rollback points.
10. Produce a plan that can be posted to the issue or durable record.
11. Include an explicit human approval request when required.
12. Update run memory with spec version and phase status.

## Expected Outputs

- Filled `templates/plan.md`
- Filled `templates/milestone-plan.md`
- `templates/linear-plan-comment.md` when Linear-first mode is active

## Quality Bar

Each phase should produce a reviewable, testable state.

## Common Failure Modes

- Creating phases too broad to verify.
- Treating manual QA as the only validation when automated checks exist.
- Missing migration or data risks.
- Adding tasks that do not map to the spec.
- Treating future-phase work as current scope.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-build`, `hvn-review`, and `hvn-ship`.
