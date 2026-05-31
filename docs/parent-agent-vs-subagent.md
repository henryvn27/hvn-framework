# Parent Agent Vs Subagent

ORCA-HVN enforces a clear boundary between the parent orchestrator and subagents.

## Parent Rules

Only the parent communicates with the user.

The parent should:

- decide whether to delegate
- choose the orchestration pattern
- assign work
- gather results
- reconcile conflicts
- enforce approvals and guardrails
- produce the final answer

## Subagent Rules

Subagents do not reply directly to the user.

A subagent should:

- perform a narrow task
- stay within scope
- use only allowed context and tools
- return structured output
- escalate clearly if blocked

## Required Clarity

Every subagent should be told:

- that it is acting as a subagent
- what it owns
- what it must not do
- what output shape it must return
