# Run Memory

Run memory is ORCA Framework's durable record of project-specific facts, decisions, and context that should help future runs act consistently.

## Purpose

Use run memory to preserve:

- stable product or repo decisions
- recurring user preferences
- known constraints and blockers
- operational context that future runs should not rediscover
- durable legacy-system facts, business rules, and modernization constraints
- goal lifecycle state, objective, blocker, and steering notes when useful for resume

## What Run Memory Is Not

Run memory is not a full execution log.

If you need to know what happened during a specific run, use a trace. See [docs/observability.md](observability.md).

If you need the current coordination picture for an active run, use shared state. See [docs/shared-state.md](shared-state.md).

## Good Run Memory Entries

Good entries are:

- durable enough to matter later
- short enough to re-read quickly
- explicit about whether they are facts, decisions, or assumptions

Compactness matters. Verbose run-memory entries increase future prompt mass and weaken the point of having a reusable durable memory layer.

## Contract

Use [templates/contracts/run-memory-contract.md](../templates/contracts/run-memory-contract.md) when designing memory artifacts or checking whether a memory entry is complete enough for future reuse.

For portable machine-readable exchange, use the run-memory schema in `schema/versions/v1/run-memory.schema.json`.

## Relationship To Workflow

- onboarding discovers context
- legacy archaeology extracts behavior, business logic, and modernization risk
- spec and plan define intended work
- goal contracts track durable objective execution when used
- run memory preserves durable lessons
- traces record what happened during a run
- receipts summarize the run outcome for quick reinspection
- lineage links the artifact to upstream and downstream workflow state
- shared state records the current multi-role picture for an active run
- controller and executor role decisions may be preserved when they become durable operating context
- evals judge how well the workflow performed
- workflow metrics record time, retries, and optional usage signals
- token-efficiency policy should bias memory toward compact summaries rather than transcript replay

Run memory may reference benchmark results, workflow metrics summaries, regression-task decisions, legacy audit findings, goal state, or checkpoint outcomes when those become durable project context, but it should not duplicate the underlying per-run artifacts.

Portable schemas extend run memory by making the required shape explicit for validation or mapping. They do not replace concise human-readable entries.
