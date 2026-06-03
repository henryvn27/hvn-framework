# Controller Agent Integration

ORCA Framework should work cleanly with an external controller agent that orients to a repository, decides what should happen next, and delegates bounded execution when another harness is the better fit.

## What A Controller Agent Is

A controller agent:

- enters the project
- reads current state
- decides which workflow path applies
- checks missing artifacts and blockers
- chooses whether to operate directly or delegate
- re-ingests results back into the framework

The controller does not need to be tied to a separate controller product. Codex and Claude Code can both act as controller-capable runtimes when the workflow uses explicit artifacts and bounded delegation.

## Controller Versus Executor

The roles are different even when one harness can do both.

### Controller

- orchestrates
- routes
- monitors
- requests approval when needed
- tracks project coherence
- decides when delegation is better than direct execution

### Executor

- performs bounded implementation, research, QA, or review work
- stays inside the delegated scope
- returns evidence and structured results

## ORCA Framework Support Model

ORCA Framework supports controller-style workflows through:

- [HVN-STATUS.md](../HVN-STATUS.md) for fast repo orientation
- [docs/project-orientation.md](project-orientation.md)
- [docs/delegation.md](delegation.md)
- [docs/result-ingestion.md](result-ingestion.md)
- shared state, receipts, lineage, approvals, and next-step guidance

## Controller Usage

A controller-oriented runtime should be able to:

1. read the status and orientation artifacts
2. determine the active phase and missing pieces
3. decide whether to act directly or delegate to Codex, Claude Code, another harness, or a human
4. ingest the result back into ORCA Framework using a predictable structure

## Codex-Like Executor Usage

Codex-like executors are a strong fit for:

- implementation
- repo research
- bounded QA
- issue-focused work
- goal-mode execution when the host and scope support it

The controller should brief the executor with explicit scope, artifacts, constraints, verification requirements, and stop conditions.
The same rule applies to subagents inside one harness: explicit worker packets beat implicit task splitting.

For research-heavy work, a controller agent may also choose an optional knowledge surface such as NotebookLM when the user already uses it or explicitly requests it. That should be treated as a document and synthesis helper, not the controller's canonical state store.
The controller should prefer the lightest route that preserves coherence instead of assembling a larger tool chain by default.
Subagent orchestration should improve coherence, not turn one task into a swarm.

## Ownership Rule

Avoid ambiguous ownership:

- controller owns routing, coherence, and state interpretation
- executor owns the bounded task outcome and its evidence

If the executor discovers new scope, it should return that as a result rather than silently broadening the task.
