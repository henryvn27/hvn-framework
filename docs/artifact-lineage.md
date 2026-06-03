# Artifact Lineage

Artifact lineage records how ORCA Framework artifacts relate to each other across a workflow.

## Purpose

Lineage should answer:

- what produced this artifact
- what inputs it depended on
- what superseded it
- what downstream artifacts depend on it

## Typical Links

Track links between:

- intake or onboarding
- spec
- milestone
- goal contract
- background run contract
- background run plan
- implementation run
- trace
- receipt
- background run receipt
- QA finding
- regression task
- approval request
- delegation brief
- delegation result
- result ingestion
- issue, PR, or handoff artifact

## Maintenance Rule

Lineage should stay clear and shallow. Prefer explicit links over inferred graphs. The goal is inspectability, not exhaustive provenance theory.
