---
name: orca-checkpoint
description: Pause work at explicit decision points, gather inspection context, and record approve/reject/resume outcomes.
---

# ORCA Framework Checkpoint

## What This Skill Is

A practical workflow for pausing risky or ambiguous work so a human can inspect and decide what happens next.

## Trigger

Use for scope expansion, destructive edits, dependency changes, architecture pivots, ambiguous verification, or ship-readiness uncertainty.

## Do Not Trigger

Do not force checkpoints for already-approved, low-risk work.

## Required Inputs

- Triggering risk or ambiguity
- Current state summary

## Optional Inputs

- Shared state artifact
- Trace summary
- Approval context

## Exact Workflow

1. Pause at a clean boundary.
2. Write a checkpoint request with the decision needed.
3. Link the artifacts a human should inspect.
4. Record the checkpoint decision.
5. Resume only under the recorded decision or revision.

## Expected Outputs

- Filled `templates/checkpoint-request.md`
- Filled `templates/checkpoint-decision.md`

## Quality Bar

The checkpoint should make the decision easy to inspect and easy to resume from.

## Common Failure Modes

- pausing without clarifying the decision needed
- resuming without recording the decision
- creating process overhead where no real risk exists

## Relationship To Other ORCA Framework Skills And Commands

Works with `orca-approve`, `orca-state`, `orca-inspect`, and `orca-ship`.
