---
name: orca-portability
description: Define, validate, and map portable ORCA Framework artifact schemas without replacing human-readable docs.
---

# ORCA Framework Portability

## What This Skill Is

A schema-first portability workflow for making ORCA Framework artifacts more explicit, versioned, and mappable across runtimes and tools.

## Trigger

Use when:

- adding or revising portable artifact schemas
- validating whether an artifact matches a declared schema
- documenting artifact mappings to another system
- planning schema version changes

## Do Not Trigger

Do not force schema work onto trivial local notes or artifacts that are not yet stable enough to justify a portable shape.

## Required Inputs

- artifact family or target artifact
- current schema version or desired schema direction

## Optional Inputs

- existing Markdown artifact
- mapping target
- migration note

## Exact Workflow

1. Identify the artifact family and current contract.
2. Choose the matching portable schema and version.
3. Validate required structure without inventing missing data.
4. Record partial validity or migration needs when present.
5. Document mappings when the artifact must cross systems or runtimes.

## Expected Outputs

- schema file updates in `schema/versions/`
- example payloads in `schema/examples/`
- mapping or migration artifacts when needed

## Quality Bar

The schema layer should stay practical, versioned, and readable enough that maintainers can actually use it.

## Common Failure Modes

- trying to standardize unstable artifacts too early
- treating schema validity as proof of artifact quality
- hiding lossy mappings

## Relationship To Other ORCA Framework Skills And Commands

Supports `orca-schema`, `orca-validate-schema`, contracts, run memory, traces, receipts, and eval workflows.
