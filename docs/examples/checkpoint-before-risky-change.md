# Example Checkpoint Before Risky Change

## Situation

A builder realizes the approved feature likely requires an installer change that was not in the original plan.

## Checkpoint Action

The run pauses before editing the installer. A checkpoint request links:

- current plan
- current shared state
- trace summary of why the scope changed
- proposed installer edit

## Decision

The human narrows scope and asks for a docs-only fallback first.

## Resume

The builder resumes under the revised scope instead of improvising the installer change.
