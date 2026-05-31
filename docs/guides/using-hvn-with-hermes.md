# Using HVN With Hermes

Use this guide when Hermes Agent is coordinating or delegating work.

## When This Path Fits

- Hermes is acting as a controller or orchestration layer
- You need durable handoffs between coordinating and executing agents
- You want HVN artifacts to stay stable while Hermes manages execution

## How It Works

Hermes is most useful when the coordination record, spec, and run memory remain explicit.
That lets a controller agent coordinate without collapsing the workflow into chat state.

## Recommended Flow

1. Install with [../hosts/hermes-agent.md](../hosts/hermes-agent.md).
2. Read [../run-memory-handoffs.md](../run-memory-handoffs.md).
3. Use `hvn-onboard`, `hvn-spec`, and `hvn-plan` before delegation.
4. Update run memory after meaningful handoffs or QA passes.

## Common Pitfalls

- Delegating before the scope is spec-ready
- Handing off implementation without linking the active spec
- Reusing contaminated QA context across fresh testers

## Read Next

- [../hosts/hermes-agent.md](../hosts/hermes-agent.md)
- [../run-memory-handoffs.md](../run-memory-handoffs.md)
- [../interactive-question-flows.md](../interactive-question-flows.md)
- [../examples/hermes-workflow.md](../examples/hermes-workflow.md)
