# hvn-metrics

## Purpose

Record time, retries, and optional cost signals for an HVN workflow run.

## When To Use

Use for meaningful runs, eval passes, QA-heavy workflows, repeated tasks, or any situation where efficiency and retry burden matter.

## Required Inputs

- Workflow type
- Run or issue ID

## Optional Inputs

- Token or cost data
- Retry breakdown by stage
- Trace artifact

## Linear Context

- Expects: issue ID, workflow stage, trace or artifact links, outcome state
- Reads: traces, QA reports, review findings, and run notes
- Posts: metrics summary when the run contributes to workflow analysis or release confidence
- Trigger: meaningful run complete, blocked run, repeated retries, eval or benchmark review
- Human approval: not required to record metrics

## Opt-Out Context

Store workflow metrics in the chosen durable record or linked artifact.

## Workflow

1. Use `hvn-accounting`.
2. Record run timing and status.
3. Record retries and stage burden.
4. Record token or cost fields only with honest confidence.
5. Write the metrics artifact.

## Outputs And Artifacts

- `templates/workflow-metrics.md`

## Failure Cases

- If exact usage data is unavailable, mark it estimated or unavailable.
- If retries are unclear, record the uncertainty instead of pretending precision.

## Related Commands And Skills

- Commands: `hvn-trace`, `hvn-eval`, `hvn-review`
- Skills: `hvn-accounting`
