# Corpus Privacy

Persistent corpus support increases the amount of durable context ORCA can reuse. That also increases the need for explicit boundaries.

## Core Privacy Rules

- corpus support is opt-in
- no corpus path should be assumed by default
- reference and write-back permissions must be stored separately
- project-level disable should be respected even if the global corpus remains enabled elsewhere
- ORCA should not treat external folders as available just because they are locally reachable

## Practical Privacy Model

A configured corpus means:

- ORCA may use the approved folder as part of its source-of-truth hierarchy
- ORCA may reuse that grounding across sessions when configuration allows it
- ORCA should still stay inside the configured access mode and allowed write-back modes

It does not mean:

- blanket permission to read arbitrary adjacent folders
- blanket permission to write generated notes everywhere
- permission to ignore project-specific opt-out

## Recommended Safe Defaults

- global corpus disabled
- reference disabled
- write-back disabled
- narrow allowed path
- narrow allowed write-back kinds if enabled later

## Good User Messaging

When corpus support is enabled, ORCA should be able to say clearly:

- which folder is configured
- whether reference is enabled
- whether write-back is enabled
- which write-back kinds are allowed
- whether this project inherited, narrowed, or disabled corpus access

## Related Docs

- [corpus-overview.md](corpus-overview.md)
- [corpus-settings.md](corpus-settings.md)
- [corpus-precedence.md](corpus-precedence.md)
