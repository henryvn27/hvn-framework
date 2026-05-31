# Harness-Agnostic Orchestration

ORCA-HVN separates orchestration logic from harness implementation details.

## Conceptual Layer

The conceptual layer defines:

- delegation policy
- role boundaries
- context packet shape
- result packet shape
- failure and escalation semantics
- approval rules
- observability expectations

These should not depend on one runtime's exact command syntax or API.

## Harness-Specific Layer

Harness-specific behavior defines:

- whether native subagents exist
- whether delegation is simulated or native
- how packets are transported
- what observability hooks exist
- whether background workers are supported
- what approval surfaces are available

## Rule

If native multi-agent support is weak, ORCA-HVN should still preserve the conceptual model through:

- structured delegation packets
- sequential pseudo-subagent execution
- manual worker invocation
- background job patterns
- explicit result ingestion

The user experience should stay conceptually consistent even when the transport changes.
