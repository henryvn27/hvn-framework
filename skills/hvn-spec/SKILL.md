---
name: hvn-spec
description: Convert intent, discovery, and research into a clear implementation specification.
---

# HVN Spec

## What This Skill Is

A spec-writing workflow that creates the contract for implementation and QA.

## Trigger

Use before non-trivial implementation.

## Do Not Trigger

Do not use for tiny mechanical edits where acceptance is obvious and low-risk.

## Required Inputs

- Goal
- User or system behavior
- Constraints

## Optional Inputs

- Intake summary
- Discovery notes
- Research brief

## Exact Workflow

1. Define the problem and target users.
2. Write goals, non-goals, flows, requirements, edge cases, and acceptance criteria.
3. Identify assumptions and unresolved questions.
4. Confirm that each acceptance criterion is testable.

## Expected Outputs

- Filled `templates/spec.md`

## Quality Bar

A builder and reviewer should reach the same interpretation of done.

## Common Failure Modes

- Writing implementation details as goals.
- Missing non-goals.
- Creating acceptance criteria that cannot be verified.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-plan`, `hvn-review`, and briefed QA.
