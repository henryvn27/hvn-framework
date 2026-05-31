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

1. Use `hvn-router` to record selected skill and preserve-stack posture.
2. Read the spec from Linear or the opt-out record.
3. Break the work into small phases.
4. Name expected files or system areas.
5. Attach verification to each phase.
6. Identify dependencies and rollback points.
7. Produce a plan that can be posted to the issue or durable record.
8. Include an explicit human approval request when required.

## Expected Outputs

- Filled `templates/plan.md`
- `templates/linear-plan-comment.md` when Linear-first mode is active

## Quality Bar

Each phase should produce a reviewable, testable state.

## Common Failure Modes

- Creating phases too broad to verify.
- Treating manual QA as the only validation when automated checks exist.
- Missing migration or data risks.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-build`, `hvn-review`, and `hvn-ship`.
