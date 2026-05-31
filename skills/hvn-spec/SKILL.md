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

- Linear issue ID or opt-out work item
- Intake summary
- Discovery notes
- Research brief

## Exact Workflow

1. Read Linear issue context or the opt-out work item.
2. Define the problem and target users.
3. Write goals, non-goals, flows, requirements, edge cases, and acceptance criteria.
4. Identify assumptions and unresolved questions.
5. Confirm that each acceptance criterion is testable.
6. Format the result for a Linear spec comment or durable opt-out artifact.
7. State whether human approval is required before planning or build.

## Expected Outputs

- Filled `templates/spec.md`
- Follows `templates/contracts/spec-contract.md`
- `templates/linear-spec-comment.md` when Linear-first mode is active

## Quality Bar

A builder and reviewer should reach the same interpretation of done.

## Common Failure Modes

- Writing implementation details as goals.
- Missing non-goals.
- Creating acceptance criteria that cannot be verified.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-plan`, `hvn-goal-mode`, `hvn-linear-plan-comment`, `hvn-review`, and briefed QA.
