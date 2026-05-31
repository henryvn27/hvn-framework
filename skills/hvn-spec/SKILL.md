---
name: hvn-spec
description: Convert onboarding, discovery, and research into the primary implementation specification.
---

# HVN Spec

## What This Skill Is

A spec-writing workflow that creates the controlling contract for planning, implementation, review, and QA.

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

1. Use `hvn-router` when the work is non-trivial.
2. Check issue health and current run memory.
3. Read Linear issue context or the opt-out work item.
4. Define the problem and target users.
5. Define problem, objective, target users or usage context, v1 scope, later phase scope, out-of-scope work, constraints, assumptions, edge cases, UX or system behavior, data or API implications, likely area of change, requirements, acceptance criteria, verification criteria, and rollout risks.
6. Identify whether authenticity preflight and aesthetic profile selection are required.
7. Preserve existing stack and repo conventions unless redesign was requested.
8. Identify assumptions and unresolved questions.
9. Confirm that each acceptance criterion is testable and maps to verification criteria.
10. Split current, later, and excluded work using `templates/requirements-split.md` when needed.
11. Format the result for a Linear spec comment or durable opt-out artifact.
12. State whether human approval is required before planning or build.
13. Recommend or run `hvn-spec-check` before planning.
14. Update run memory with spec status and active spec version.

## Expected Outputs

- Filled `templates/spec.md`
- `templates/linear-spec-comment.md` when Linear-first mode is active

## Quality Bar

A builder and reviewer should reach the same interpretation of done.

## Common Failure Modes

- Writing implementation details as goals.
- Missing non-goals.
- Creating acceptance criteria that cannot be verified.
- Mixing later-phase ideas into v1.
- Planning from chat instead of the spec.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-spec-check`, `hvn-plan`, `hvn-linear-plan-comment`, `hvn-build`, `hvn-review`, and briefed QA.
