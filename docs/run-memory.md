# Run Memory

Run memory is HVN's durable record of project-specific facts, decisions, and context that should help future runs act consistently.

## Purpose

Use run memory to preserve:

- stable product or repo decisions
- recurring user preferences
- known constraints and blockers
- operational context that future runs should not rediscover
- durable legacy-system facts, business rules, and modernization constraints

## What Run Memory Is Not

Run memory is not a full execution log.

If you need to know what happened during a specific run, use a trace. See [docs/observability.md](observability.md).

If you need the current coordination picture for an active run, use shared state. See [docs/shared-state.md](shared-state.md).

## Good Run Memory Entries

Good entries are:

- durable enough to matter later
- short enough to re-read quickly
- explicit about whether they are facts, decisions, or assumptions

## Contract

Use [templates/contracts/run-memory-contract.md](../templates/contracts/run-memory-contract.md) when designing memory artifacts or checking whether a memory entry is complete enough for future reuse.

## Relationship To Workflow

- onboarding discovers context
- legacy archaeology extracts behavior, business logic, and modernization risk
- spec and plan define intended work
- run memory preserves durable lessons
- traces record what happened during a run
- shared state records the current multi-role picture for an active run
- evals judge how well the workflow performed
- workflow metrics record time, retries, and optional usage signals

Run memory may reference benchmark results, workflow metrics summaries, regression-task decisions, legacy audit findings, or checkpoint outcomes when those become durable project context, but it should not duplicate the underlying per-run artifacts.
