# Workflow Accounting

Workflow accounting helps HVN understand the operational cost of its own process. A workflow that succeeds only after repeated retries, long delays, or heavy manual cleanup is not as healthy as the final output alone suggests.

## Purpose

Use workflow metrics to answer:

- how long a workflow took
- where retries happened
- which stages were expensive or slow
- how often runs were blocked or abandoned
- what cost per successful workflow looks like when usage data is available

## What To Measure Reliably

HVN can usually measure:

- workflow type
- run or issue ID
- start time
- end time
- elapsed time
- retry count
- major stages
- outcome status

HVN may sometimes measure:

- token usage
- cost
- stage-level time split

For token or cost fields, record one of:

- `exact`
- `estimated`
- `unavailable`

Do not fabricate exact numbers when the environment does not expose them.

## Why Retries Matter

Retries amplify time and spend silently. A workflow that appears successful may still be unhealthy if it:

- repeatedly loops on the same stage
- needs multiple corrective reruns
- succeeds only after broad rework

Track retry burden by stage whenever practical.

## Key Metrics

- time per run
- time per successful run
- retry count per stage
- blocked run count
- abandoned run count
- cost per successful run when cost data exists

## Format

Use [templates/workflow-metrics.md](../templates/workflow-metrics.md) as the per-run format.

Workflow metrics should integrate with:

- traces in [docs/observability.md](observability.md)
- run memory in [docs/run-memory.md](run-memory.md)
- eval reports in [docs/evals.md](evals.md)
- QA and review summaries when the workflow includes those phases

## Interpretation Guidance

- High time with low retries may indicate complex but stable work.
- High retries with moderate time often indicate poor instructions or weak handoffs.
- Cost per success is useful only when compared over multiple runs.
- One blocked run is a note. A pattern of blocked runs is a framework signal.
