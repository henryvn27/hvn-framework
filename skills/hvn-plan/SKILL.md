---
name: hvn-plan
description: Turn a spec into sequenced implementation phases with verification gates.
---

# HVN Plan

## What This Skill Is

A planning workflow for converting a spec into executable phases.

## Trigger

Use after a spec exists and before implementation begins.

## Do Not Trigger

Do not use when the user explicitly asks only for a review or explanation.

## Required Inputs

- Spec or task contract

## Optional Inputs

- Linear issue ID or opt-out work item
- Discovery notes
- Verification commands
- Risk areas

## Exact Workflow

1. Read the spec from Linear or the opt-out record.
2. Break the work into small phases.
3. Name expected files or system areas.
4. Attach verification to each phase.
5. Identify dependencies and rollback points.
6. Produce a plan that can be posted to the issue or durable record.
7. Include an explicit human approval request when required.

## Expected Outputs

- Filled `templates/plan.md`
- Approval request shape from `templates/approval-request.md` when risk requires it
- `templates/linear-plan-comment.md` when Linear-first mode is active

## Quality Bar

Each phase should produce a reviewable, testable state.

## Common Failure Modes

- Creating phases too broad to verify.
- Treating manual QA as the only validation when automated checks exist.
- Missing migration or data risks.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-build`, `hvn-review`, and `hvn-ship`.
