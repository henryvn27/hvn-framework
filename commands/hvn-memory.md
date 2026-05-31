# hvn-memory

## Purpose

Create or update run memory for a Linear issue or workstream.

## When To Use

Use at the start of non-trivial work, after scope changes, after implementation phases, after failed attempts, after review or QA, and before handoff.

## Required Inputs

- Issue or workstream identity
- Current objective
- Latest state

## Optional Inputs

- Spec
- Plan
- QA or review reports
- Linked artifacts

## Linear Context

- Reads: issue title, description, state, labels, comments, links, project, and latest artifacts
- Posts: run memory update or link
- Trigger: handoff, session end, phase completion, blocker change
- Human approval: not required unless memory changes approved scope

## Workflow

1. Read the current issue or opt-out record.
2. Capture objective, approved scope, decisions, risks, blockers, failed attempts, next steps, links, and QA/review status.
3. Remove secrets, private data, and excessive transcript detail.
4. Post or prepare the memory update.

## Outputs And Artifacts

- `templates/run-memory.md`

## Failure Cases

- If Linear is blocked, write local memory and record exact sync instructions.
- If scope conflicts with the spec, flag the conflict instead of normalizing it away.

## Related Commands And Skills

- Commands: `hvn-linear-sync`, `hvn-ship`
- Skills: `hvn-run-memory`, `hvn-linear-core`
