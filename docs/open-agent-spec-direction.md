# Open Agent Spec Direction

ORCA Framework should move toward portable artifact shapes in a way that stays incremental, versioned, and easy to inspect.

## Direction

The practical direction is:

1. define machine-readable schemas for the most important artifacts
2. keep Markdown artifacts as the review and handoff surface
3. add explicit versioning and migration notes
4. document mappings instead of overclaiming universal interchange

## What This Is Not

This is not an attempt to publish a grand universal agent standard.

ORCA Framework should avoid:

- abstract standardization detached from real artifacts
- breaking current Markdown workflows to satisfy a schema
- assuming all harnesses, trackers, or eval systems want the same fields

## First-Class Interoperability Goals

Near-term portability should help with:

- cross-harness execution
- tracker migration or synchronization
- runtime status inspection
- eval and trace ingestion
- future connectors or registry-based tooling

## Design Rules

- start from artifacts ORCA Framework already uses
- prefer stable identifiers over inferred meaning
- allow partial mapping when full fidelity is impossible
- record what is lost or transformed during mapping
- preserve backward-aware migration notes

## Relationship To Existing Contracts

The current contract files describe minimum artifact shape for humans.
The schema layer makes those shapes explicit for machines.

Contracts and schemas should converge in meaning, but they do not need identical syntax.

## Practical Mapping Model

In practice, ORCA Framework portability will usually mean:

- Markdown artifact as the canonical human record
- structured schema payload as the machine-readable companion
- explicit mapping docs for host-native or tool-native formats

That approach is more realistic than trying to force every environment to adopt ORCA Framework directly.
