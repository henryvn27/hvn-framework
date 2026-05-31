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

Failure modes:

- overlapping branch scope
- noisy merge stage

## Maker-Checker

Use when:

- an independent validation pass is worth the cost
- implementation and checking should stay separate

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
