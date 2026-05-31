---
name: hvn-run-memory
description: Create and maintain compact run memory for a Linear issue or workstream.
---

# HVN Run Memory

## What This Skill Is

A state-continuity workflow for preserving the essential facts a future agent needs.

## Trigger

Use at non-trivial work start, phase completion, handoff, blocker changes, failed attempts, review or QA updates, and ship preparation.

## Do Not Trigger

Do not use for trivial one-step work or blind QA context packets.

## Required Inputs

- Issue or workstream identity
- Current objective
- Latest status

## Optional Inputs

- Spec
- Plan
- Review report
- QA report
- Regression packs
- Linked artifacts

## Exact Workflow

1. Read the issue or opt-out record.
2. Capture identity, objective, approved scope, decisions, assumptions, risks, blockers, failed attempts, next steps, links, and QA/review status.
3. Remove secrets, private data, large transcripts, and stale noise.
4. State what changed since the last memory update.
5. Post or prepare the memory update.

## Expected Outputs

- `templates/run-memory.md`

## Quality Bar

A fresh agent should understand what to do next in under two minutes.

## Common Failure Modes

- Copying the entire thread.
- Storing secrets.
- Replacing the spec or plan instead of summarizing current state.
- Giving blind QA hidden context.

## Relationship To Other HVN Skills And Commands

Supports onboarding, spec, plan, build, review, QA, ship, and retrospectives.
