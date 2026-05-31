# Routing Example: Linear Blocked

## Situation

The user requests a multi-step repository refactor. Linear access returns a reauthentication error.

## HVN Behavior

The agent says Linear is blocked, then continues local work only if appropriate.

## Pending Sync

```text
Linear access blocked: reauthentication required.

Create or update:
- Project: repository or product name
- Issue: concise task title
- State: In Progress
- Labels: needs-plan, agent-build
- Comment: scope, plan, blockers, local branch, validation commands, and final commit link
```

## Final Handoff

The final answer includes the commit, validation evidence, push status, and exact Linear update that should be posted once access is restored.
