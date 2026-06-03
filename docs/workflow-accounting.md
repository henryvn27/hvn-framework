# Workflow Accounting

Workflow accounting helps ORCA Framework understand the operational cost of its own process. A workflow that succeeds only after repeated retries, long delays, or heavy manual cleanup is not as healthy as the final output alone suggests.

## Purpose

Use workflow metrics to answer:

- how long a workflow took
- where retries happened
- which stages were expensive or slow
- how often runs were blocked or abandoned
- what cost per successful workflow looks like when usage data is available

## What To Measure Reliably

ORCA Framework can usually measure:

- workflow type
- run or issue ID
- start time
- end time
- elapsed time
- retry count
- major stages
- outcome status

ORCA Framework may sometimes measure:

- token usage
- cost
- stage-level time split
- cached-token or cache-read signals when the host exposes them
- recent model/provider activity for local workflow context

For token or cost fields, record one of:

- `exact`
- `estimated`
- `unavailable`

Do not fabricate exact numbers when the environment does not expose them.

Orca Monitor export may include recent model/provider/token entries only when ORCA already has those numbers cheaply from workflow accounting or host-provided usage. The Orca Monitor file is workflow context, not billing truth.

## Why Retries Matter

Retries amplify time and spend silently. A workflow that appears successful may still be unhealthy if it:

- repeatedly loops on the same stage
- needs multiple corrective reruns
- succeeds only after broad rework

Track retry burden by stage whenever practical.
Treat repeated retries as hidden token spend even when exact token telemetry is unavailable.

## Key Metrics

- time per run
- time per successful run
- retry count per stage
- blocked run count
- abandoned run count
- cost per successful run when cost data exists
- cached-token ratio or cache-read share when usage data exists

## Format

Use [templates/workflow-metrics.md](../templates/workflow-metrics.md) as the per-run format.

Workflow metrics should integrate with:

- traces in [docs/observability.md](observability.md)
- run memory in [docs/run-memory.md](run-memory.md)
- eval reports in [docs/evals.md](evals.md)
- QA and review summaries when the workflow includes those phases
- token-efficiency policy in [docs/token-efficiency.md](token-efficiency.md)
- Orca Monitor status export in [docs/orca-monitor-status.md](orca-monitor-status.md)

## Interpretation Guidance

- High time with low retries may indicate complex but stable work.
- High retries with moderate time often indicate poor instructions or weak handoffs.
- Cost per success is useful only when compared over multiple runs.
- Low cache reuse on repeated workflows often means prompts or tool definitions are drifting unnecessarily.
- One blocked run is a note. A pattern of blocked runs is a framework signal.
