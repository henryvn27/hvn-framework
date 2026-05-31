# hvn-memory-update

## Purpose

Update run memory after meaningful state changes so the next agent can continue from the correct operational state.

## When To Use

Use this command after:

- user corrections
- scope or approval changes
- discovery findings
- plan changes
- implementation phases
- failed attempts
- blockers appearing or resolving
- review findings
- blind QA output
- briefed QA output
- regression candidates
- ship readiness changes
- ownership handoffs
- Linear sync failures or recoveries

## Inputs

- Existing memory location
- What changed
- Owner or agent role
- Timestamp
- Source artifact or comment
- Operational implication
- Next step

## Workflow

1. Read current memory before editing.
2. Update top-level `Updated at`, current status, decisions, assumptions, blockers, open questions, linked artifacts, and next steps as needed.
3. Add a timestamped episodic entry when provenance matters.
4. Preserve user corrections and failed attempts.
5. Remove or compress stale detail that no longer affects future work.
6. If Linear is available, sync a concise update to the issue.
7. If Linear is blocked, create or update the local sync note.

## Outputs

- Updated memory
- Short summary of what changed
- Next owner and next step
- Linear sync result or pending sync note

## Failure Handling

- If the update conflicts with existing memory, preserve both entries and mark the conflict as an open question or correction.
- If the update would expose secrets or sensitive data, summarize safely and link only approved artifacts.
- If memory has become too large, compress before adding new material.
- If blind QA has not completed, do not add hidden implementation context to the blind tester's packet.

## Related

- `hvn-memory`
- `hvn-memory-read`
- `docs/run-memory-maintenance.md`
- `templates/linear-memory-sync.md`
