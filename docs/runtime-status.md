# Runtime Status

Runtime status is the inspectable summary of why ORCA Framework is behaving a certain way in the current harness.

It should also make the current concrete action legible. Status text should say what the agent is actually doing, such as updating docs, planning the next slice, rerunning QA, or refreshing shared state. Do not use `using ORCA` or `updating ORCA` as the primary action label unless the framework itself is the object being changed.

## It Should Show

- detected harness
- controller role if known
- executor role if known
- detection confidence
- enabled features
- disabled features
- degraded capabilities
- active policy switches
- update channel
- update mode
- update availability state
- recommended workflow mode
- delegation recommendation when relevant
- missing integrations
- latest receipt
- latest background run state
- related artifacts
- replay availability
- restore points
- background blockers when relevant
- Orca Monitor export path when enabled
- important caveats

## Purpose

Use runtime status to make routing decisions visible to users and maintainers. This reduces mystery and makes incorrect adaptation easier to spot.

When a short narrative status line is included, prefer:

- action
- object
- why
- next check

Example:

- `Updating the command-mapping docs for side-session behavior, then rerunning validation.`

For controller-style workflows, runtime status should make the current split explicit:

- who is controlling
- who is executing
- whether direct execution or delegation is the safer path

## Orca Monitor Export

When runtime status changes materially, ORCA Framework should refresh the local Orca Monitor-facing snapshot described in [orca-monitor-status.md](orca-monitor-status.md). Runtime status is one of the preferred source artifacts for that export.

The export should use runtime status only for workflow context. It must not turn runtime status into hosted usage, billing, account, or quota truth.
