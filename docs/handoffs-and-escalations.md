# Handoffs And Escalations

ORCA Framework needs explicit subagent return semantics.

## Valid Return States

- success
- blocked
- need clarification
- need approval
- partial completion
- failed with retryable reason
- failed with non-retryable reason

## Parent Rules

The parent decides:

- what gets retried automatically
- what escalates back to the parent
- what needs human approval
- what should be abandoned or rerouted

## Handoff Rule

Every handoff should leave enough structure for the next actor to know:

- what happened
- what remains
- what decision is needed now
