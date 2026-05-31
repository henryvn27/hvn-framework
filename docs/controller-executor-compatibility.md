# Controller Executor Compatibility

Different harnesses are better at different responsibilities. ORCA-HVN should make those differences explicit.

## What Makes A Good Controller

A good controller harness usually has:

- durable memory
- strong orientation and inspection behavior
- routing and orchestration support
- integration visibility
- the ability to delegate and resume cleanly

## What Makes A Good Executor

A good executor harness usually has:

- strong repo manipulation or implementation ability
- good local verification support
- reliable bounded-task execution
- clear output artifacts

## Typical Pairings

### Hermes As Controller, Codex As Executor

- controller owns orientation, routing, and ingestion
- executor owns bounded implementation or research work

### Codex Alone

- one harness performs both roles
- explicit artifacts become even more important to avoid blurred state

### Claude Code Alone

- similar single-harness pattern
- use the same controller/executor distinction conceptually even if one runtime performs both

## Responsibility Boundary

- controller decides and tracks
- executor performs and reports

Use [templates/controller-executor-profile.md](../templates/controller-executor-profile.md) to summarize a chosen pairing.
