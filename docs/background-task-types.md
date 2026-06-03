# Background Task Types

ORCA Framework background mode is safe only when task type and autonomy level match.

## Safe Or Preferred

- research and note-taking
- doc draft generation
- test generation planning
- bug triage and grouping
- work-item extraction and prioritization
- non-destructive review and suggestion generation
- run preparation and morning summaries

## Allowed With Strict Guardrails

- editing local files in a controlled area
- adding tests alongside code
- small scoped refactors with clear receipts
- goal-aligned implementation slices inside an approved directory boundary

## Disallowed In Unattended Mode

- destructive operations
- broad rewrites without checkpoints
- irreversible external actions
- live production configuration changes
- anything that depends on interactive secrets or ad hoc approvals

## Selection Rule

If the task type is unclear, classify it conservatively and choose planning, analysis, or receipt generation instead of broader execution.
