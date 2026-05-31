---
name: orca-linear-core
description: Apply ORCA-HVN's Linear-default coordination model while preserving an explicit opt-out path for teams that use another system of record.
---

# ORCA-HVN Linear Core

## What This Skill Is

The coordination policy for ORCA-HVN work when Linear is available or preferred.

## Trigger

Use whenever an ORCA-HVN workflow originates from Linear or needs issue, state, comment, handoff, QA, or release coordination.

## Do Not Trigger

Do not require this skill when the user explicitly opts out of Linear for the project. In opt-out mode, use `orca-core` and map the same gates to the chosen system of record.

## Required Inputs

- Work item identifier, preferably a Linear issue ID
- Current state or gate
- User's coordination preference

## Optional Inputs

- Project ID
- Labels
- Linked artifacts
- Agent assignment

## Exact Workflow

1. Confirm whether the project is using Linear-first mode or opt-out mode.
2. If Linear-first, read issue title, description, labels, state, comments, links, project, assignee, and delegate.
3. Select the ORCA-HVN command that matches the current gate.
4. Post or prepare a concise issue-thread update after every meaningful pass.
5. Recommend state transitions only when evidence exists.
6. If Linear is unavailable or opted out, write the same update to the configured artifact location.

## Expected Outputs

- Linear comment or opt-out equivalent
- State recommendation
- Handoff summary

## Quality Bar

Coordination must be durable. Another agent should be able to continue from the issue thread or declared alternative artifact without private chat history.

## Common Failure Modes

- Treating private chat as the system of record.
- Moving gates without evidence.
- Ignoring an explicit user opt-out.

## Relationship To Other ORCA-HVN Skills And Commands

Supports all Linear commands and maps to `orca-core` in opt-out mode.
