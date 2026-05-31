---
name: orca-accounting
description: Record time, retries, and optional cost metrics for ORCA-HVN workflows without fabricating precision.
---

# ORCA-HVN Accounting

## What This Skill Is

A workflow accounting procedure for logging elapsed time, retries, outcome status, and optional cost signals per run.

## Trigger

Use for meaningful runs, repeated workflows, eval passes, QA-heavy runs, or any workflow where operational efficiency matters.

## Do Not Trigger

Do not fake exact token or cost numbers when the environment does not provide them.

## Required Inputs

- Workflow type
- Run or issue ID
- Start and end context

## Optional Inputs

- Token usage
- Cost estimate
- Retry breakdown by stage

## Exact Workflow

1. Record workflow identity and timing.
2. Count retries and note which stages retried.
3. Record outcome status and stop reason.
4. Capture token or cost fields only when available or reasonably estimated.
5. Mark confidence as exact, estimated, or unavailable.
6. Write the metrics record using `templates/workflow-metrics.md`.

## Expected Outputs

- Filled `templates/workflow-metrics.md`

## Quality Bar

Metrics should be honest, comparable, and useful for spotting inefficient workflow stages.

## Common Failure Modes

- pretending unavailable usage data is exact
- ignoring retry burden
- recording raw numbers without stage context

## Relationship To Other ORCA-HVN Skills And Commands

Supports `orca-trace`, `orca-eval`, `orca-review`, QA workflows, and `orca-metrics`.
