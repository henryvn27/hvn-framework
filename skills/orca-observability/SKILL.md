---
name: orca-observability
description: Capture practical run traces for debugging, review, and trajectory evaluation.
---

# ORCA Framework Observability

## What This Skill Is

A lightweight tracing workflow for recording what an ORCA Framework run actually did.

## Trigger

Use for non-trivial runs, debugging, evaluation, risky execution, and handoff-sensitive work.

## Do Not Trigger

Do not use for tiny one-step tasks where a trace would be pure noise.

## Required Inputs

- Work item or durable record
- Command, skill, or run being traced

## Optional Inputs

- Session ID
- Timing metadata
- Token or cost data

## Exact Workflow

1. Identify the run, work item, and agent role.
2. Record the meaningful context read.
3. Summarize major steps, tools, and artifacts.
4. Record decisions, retries, failures, and stop reason.
5. Keep secrets and low-value noise out of the trace.
6. Store the result using `templates/run-trace.md`.

## Expected Outputs

- Filled `templates/run-trace.md`

## Quality Bar

A reviewer should be able to reconstruct the run's important choices without reading a raw transcript.

## Common Failure Modes

- Logging everything instead of what matters.
- Leaking secrets or raw environment values.
- Confusing trace data with durable run memory.

## Relationship To Other ORCA Framework Skills And Commands

Supports `orca-trace`, `orca-eval`, `orca-review`, and `orca-ship`.
