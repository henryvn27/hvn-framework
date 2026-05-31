# Runtime Status

Runtime status is the inspectable summary of why ORCA-HVN is behaving a certain way in the current harness.

## It Should Show

- detected harness
- controller role if known
- executor role if known
- detection confidence
- enabled features
- disabled features
- degraded capabilities
- active policy switches
- recommended workflow mode
- delegation recommendation when relevant
- missing integrations
- latest receipt
- related artifacts
- replay availability
- restore points
- important caveats

## Purpose

Use runtime status to make routing decisions visible to users and maintainers. This reduces mystery and makes incorrect adaptation easier to spot.

For controller-style workflows, runtime status should make the current split explicit:

- who is controlling
- who is executing
- whether direct execution or delegation is the safer path
