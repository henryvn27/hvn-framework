# Replay And Restore

Replay and restore help ORCA-HVN compare behavior across versions, harnesses, prompts, policies, and compatibility changes.

## Replay

Replay means rerunning a prior workflow case against newer prompts, policies, versions, or harness conditions to compare outcomes.

Use replay for:

- debugging regressions after ORCA-HVN changes
- validating runtime adaptation changes
- checking compatibility drift after harness updates
- comparing old and new workflow outcomes

## Restore

Restore means resuming from a checkpoint, known-good artifact state, or prior workflow boundary after a failure or risky change.

Use restore for:

- failed goal attempts
- broken rollout experiments
- harness regressions
- interrupted runs with known checkpoint artifacts

## Limits

Do not promise perfect determinism.

Replay reliability depends on:

- harness behavior
- external service state
- available artifacts
- prompt and policy version drift
- tool and MCP availability

Restore reliability depends on:

- the quality of saved checkpoints
- whether downstream state changed
- whether integrations are still reachable

## Practical Rule

Prefer replay and restore as debugging and trust tools, not as guarantees of identical behavior.
