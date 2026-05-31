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

- Discovery notes
- Verification commands
- Risk areas

## Exact Workflow

1. Break the work into small phases.
2. Name expected files or system areas.
3. Attach verification to each phase.
4. Identify dependencies and rollback points.
5. Produce a plan that can be updated during work.

## Expected Outputs

- Filled `templates/plan.md`

## Quality Bar

Each phase should produce a reviewable, testable state.

## Common Failure Modes

- Creating phases too broad to verify.
- Treating manual QA as the only validation when automated checks exist.
- Missing migration or data risks.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-build`, `hvn-review`, and `hvn-ship`.
