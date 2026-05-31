# hvn-memory

## Purpose

Route run memory work. Use this umbrella command when the user asks about memory generally, when the right memory action is unclear, or when a run needs a quick status-preserving update.

Run memory is HVN's compact continuation record for a workstream. It does not replace the spec, plan, Linear issue, or long-term preference profile.

## When To Use

Use `hvn-memory` when:

- starting or resuming non-trivial work
- deciding whether to initialize, read, update, compress, or sync memory
- preparing a handoff between agents
- capturing a user correction or failed attempt
- Linear is blocked and a local memory plus sync note is needed

Use the narrower commands when the action is known:

- `hvn-memory-init`
- `hvn-memory-read`
- `hvn-memory-update`

## Inputs

- Workstream or task description
- Product or repo
- Linear project and issue, when available
- Opt-out system of record, when Linear is not used
- Current status
- Owner or agent role
- Existing memory path or issue comment, when available

## Workflow

1. Determine whether run memory already exists.
2. If no memory exists and the work is non-trivial, route to `hvn-memory-init`.
3. If memory exists and the agent is resuming, route to `hvn-memory-read`.
4. If new facts, decisions, blockers, failed attempts, or handoff details need preservation, route to `hvn-memory-update`.
5. If Linear is available, sync the concise status and artifact links to the issue.
6. If Linear is blocked, record the exact Linear update to perform later.

## Outputs

- Chosen memory action
- Memory path or durable location
- Concise current-state summary
- Next command to run
- Linear sync note when needed

## Failure Handling

- If the workstream identity is unknown, ask for or infer a stable slug before creating memory.
- If Linear is unavailable, continue with `.hvn/memory/runs/` and prepare a sync note.
- If the memory is too large, compress before using it for handoff.
- If blind QA is requested, do not provide run memory as input.

## Related

- `docs/run-memory.md`
- `docs/run-memory-linear.md`
- `docs/run-memory-handoffs.md`
- `docs/run-memory-maintenance.md`
- `templates/run-memory.md`
- `templates/linear-memory-sync.md`
- `skills/hvn-run-memory/SKILL.md`
