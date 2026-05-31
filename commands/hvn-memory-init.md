# hvn-memory-init

## Purpose

Create a new run memory artifact for a non-trivial HVN workstream before implementation or delegation.

## When To Use

Use this command when:

- a Linear issue is selected for real work
- a user opts out of Linear but the task still needs durable state
- work will span multiple sessions or agents
- a planner, builder, reviewer, or QA agent needs a shared continuation record
- an existing issue has no memory and work is about to begin

Do not initialize run memory for trivial one-step tasks.

## Inputs

- Product or repo
- Objective
- Workstream ID or source issue
- Linear project
- Linear issue
- Opt-out system of record, if any
- Approved scope or current scope uncertainty
- Owner or agent role
- Initial linked artifacts

## Workflow

1. Confirm the system of record: Linear by default, or the user's declared opt-out location.
2. Choose a canonical memory path:

   ```text
   .hvn/memory/runs/<workstream-id>__<short-slug>.md
   ```

3. Copy `templates/run-memory.md`.
4. Fill identity fields, objective, approved scope, current status, owner, timestamps, open questions, and links.
5. Record unknowns as open questions or blockers.
6. Add the first episodic entry naming the source of the memory.
7. If Linear is available, post or link the memory from the issue.
8. If Linear is blocked, prepare a `templates/linear-memory-sync.md` note for later.

## Outputs

- Initialized run memory artifact
- Memory path or durable location
- First current-state summary
- Linear sync status

## Failure Handling

- If no issue exists, create a local workstream ID from the date and slug.
- If approved scope is unclear, mark it as pending and route to onboarding, discovery, spec, or planning.
- If the storage path cannot be created, keep the memory in the current response and state exactly where it should be saved.

## Related

- `hvn-memory`
- `hvn-memory-read`
- `hvn-memory-update`
- `docs/run-memory.md`
- `templates/run-memory.md`
