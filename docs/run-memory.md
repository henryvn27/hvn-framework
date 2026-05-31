# Run Memory

Run memory is HVN's durable record of project-specific facts, decisions, and context that should help future runs act consistently.

## Purpose

Use run memory to preserve:

- stable product or repo decisions
- recurring user preferences
- known constraints and blockers
- operational context that future runs should not rediscover

## What Run Memory Is Not

Run memory is not a full execution log.

If you need to know what happened during a specific run, use a trace. See [docs/observability.md](observability.md).

## Good Run Memory Entries

Good entries are:

- durable enough to matter later
- short enough to re-read quickly
- explicit about whether they are facts, decisions, or assumptions

## Contract

Use [templates/contracts/run-memory-contract.md](../templates/contracts/run-memory-contract.md) when designing memory artifacts or checking whether a memory entry is complete enough for future reuse.

## Relationship To Workflow

- onboarding discovers context
- spec and plan define intended work
- run memory preserves durable lessons
- traces record what happened during a run
- evals judge how well the workflow performed
- workflow metrics record time, retries, and optional usage signals

Run memory may reference benchmark results, workflow metrics summaries, or regression-task decisions when those become durable project context, but it should not duplicate the underlying per-run artifacts.
