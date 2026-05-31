# hvn-memory-read

## Purpose

Read an existing run memory artifact and produce the minimal active context needed to resume work.

## When To Use

Use this command before:

- discovery
- spec work
- planning
- implementation
- review
- briefed QA
- regression work
- ship checks
- retrospectives
- handoffs

Do not use this command to brief blind first-look QA.

## Inputs

- Memory path, Linear issue, or opt-out artifact location
- Intended receiving role
- Current task
- Any known time gap since the last update

## Workflow

1. Locate the canonical memory.
2. Read top-level identity, objective, approved scope, current status, blockers, open questions, linked artifacts, and next steps.
3. Scan episodic logs only for active corrections, failed attempts, and unresolved risk.
4. Ignore archived detail unless it explains a live risk.
5. Produce a concise resume brief tailored to the receiving role.
6. Flag stale timestamps, missing Linear links, unresolved blockers, or contradictory entries.

## Outputs

- Resume summary
- Active blockers and open questions
- Required linked artifacts to inspect next
- Recommended next HVN command or role
- Memory health warnings, if any

## Failure Handling

- If memory cannot be found, route to `hvn-memory-init` or reconstruct from Linear and linked artifacts.
- If memory is stale, state what must be verified before acting.
- If memory conflicts with the issue, treat the issue as coordination authority and record a correction with `hvn-memory-update`.

## Related

- `hvn-memory`
- `hvn-memory-init`
- `hvn-memory-update`
- `docs/run-memory-handoffs.md`
