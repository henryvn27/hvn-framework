---
name: hvn-shared-state
description: Maintain a durable shared-state surface for cooperating agents on the same work item or run.
---

# HVN Shared State

## What This Skill Is

A coordination workflow for keeping active run state readable and consistent across multiple roles.

## Trigger

Use when more than one role needs the same current phase, scope, blocker, or artifact view.

## Do Not Trigger

Do not use shared state as a substitute for run memory or execution traces.

## Required Inputs

- Work item or run identity
- Current phase or coordination need

## Optional Inputs

- Spec, plan, trace, or checkpoint links
- Role ownership assignments

## Exact Workflow

1. Identify the active run and work item.
2. Record current phase, scope, role ownership, blockers, and artifact links.
3. Update only the fields your role owns unless a conflict is being resolved explicitly.
4. Preserve conflicting observations rather than silently deleting them.
5. Keep the state concise enough for another role to resume quickly.

## Expected Outputs

- Filled `templates/shared-state.md`

## Quality Bar

Another agent should be able to resume the work without rediscovering the current coordination picture.

## Common Failure Modes

- duplicating trace detail into shared state
- overwriting another role's status without explanation
- storing durable product facts that belong in run memory

## Relationship To Other HVN Skills And Commands

Supports `hvn-state`, `hvn-checkpoint`, `hvn-inspect`, and multi-role execution.
