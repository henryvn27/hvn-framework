# Harness Mapping

ORCA Framework maps the same orchestration model onto multiple implementation styles.

## Possible Harness Mappings

- native subagents
- tool-invoked workers
- event-driven background workers
- queue or job workers
- sequential task runners
- manual pseudo-subagent orchestration when native support is weak

## Mapping Rule

Keep the model stable even when the transport changes:

- same parent role
- same worker contract
- same packet semantics
- same approval and escalation logic
