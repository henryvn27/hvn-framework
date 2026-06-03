# Orchestration Patterns

ORCA-HVN supports a small set of explicit orchestration patterns.

## Single Agent

Use when:

- the task is straightforward
- context pollution risk is low
- latency overhead matters more than specialization

Do not use when:

- strong specialization or isolation is required

## Supervisor-Worker

Use when:

- one parent should delegate bounded work to one or more workers
- the parent must reconcile results and own the user response

Strong fit:

- focused implementation ownership
- targeted research
- CI triage plus parallel local debugging
- PR feedback remediation

Failure modes:

- vague worker contracts
- parent delegating too early

## Sequential Pipeline

Use when:

- work must move through ordered stages
- each stage produces a clean handoff artifact

Failure modes:

- stage outputs that are too vague to pass onward

## Fan-Out / Fan-In

Use when:

- work branches are independent
- parallel research, code reading, or comparisons help

Parent rules:

- branch scopes must not overlap
- every branch needs a named owner
- merge criteria must be stated before fan-out starts
- the parent should keep one local task instead of only waiting

Failure modes:

- overlapping branch scope
- noisy merge stage

## Maker-Checker

Use when:

- an independent validation pass is worth the cost
- implementation and checking should stay separate

Strong fit:

- code change plus review
- build plus blind QA
- feature implementation plus security review

Failure modes:

- checker receiving biased or excessive context

## Dynamic Handoff

Use when:

- the parent needs to route to the next best specialist after new evidence arrives

Failure modes:

- hidden ownership confusion

## Adaptive Planning

Use when:

- the parent needs to revise the orchestration shape as the task changes

Failure modes:

- re-planning too often

## Long-Running Background Worker

Use when:

- the task is bounded but long enough to justify asynchronous progress

Failure modes:

- weak stop conditions
- poor receipt or resume artifacts

## Sidecar Vs Critical Path

Before spawning workers, classify work into:

- critical path: the next thing the parent must know before it can proceed
- sidecar: useful parallel work that can advance without blocking the next local step

Do not offload the immediate critical-path step just because subagents exist.

## Merge Discipline

When workers return:

- ingest structured results first
- reconcile conflicts before speaking to the user
- keep proof separate from recommendation
- state what was verified, what is still assumed, and what should run next
