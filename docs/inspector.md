# Inspector

HVN inspector support is a file-based model for reviewing the current state of a run without needing a custom UI. The goal is to make runs auditable and resumable with simple inspectable artifacts.

## Purpose

Use the inspector model to review:

- run identity
- spec link
- current phase
- run memory summary
- shared state summary
- trace summary
- approvals and checkpoints
- artifacts produced
- QA and eval status
- open blockers

## File-First Model

Start with an inspectable artifact rather than a platform promise. The baseline inspector output is:

- [templates/run-inspection.md](../templates/run-inspection.md)

The inspector should aggregate links and summaries from:

- shared state
- run memory
- traces
- checkpoint artifacts
- QA or eval artifacts

## When To Use

Use inspection when:

- a human needs to review state before approving risky work
- a run is paused or blocked
- another agent needs to resume safely
- ship readiness or confidence is unclear

## Quality Bar

An inspector artifact should let a maintainer answer:

- what phase is this run in
- what has already been approved
- what evidence exists
- what is still blocked
- what should happen next

without re-reading the entire issue history or transcript.
