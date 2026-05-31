# Schema Layer

This directory contains ORCA-HVN's portable artifact schema layer.

## Goals

- define explicit portable shapes for core artifacts
- version those shapes
- preserve human-readable Markdown as the primary review surface
- enable validation and mapping without claiming universal standardization

## Layout

- `versions/` contains versioned schema files
- `examples/` contains example payloads

## Format

The initial schema layer uses JSON Schema for consistency and broad tooling support.

Each schema includes:

- `$schema`
- `$id`
- `title`
- `type`
- required fields
- versioned structure expectations

## Current Families

- onboarding summary
- spec
- milestone plan
- goal contract
- run memory
- run trace
- execution receipt
- QA finding
- regression task
- approval request
- runtime status

See [docs/portable-artifacts.md](../docs/portable-artifacts.md) and [docs/schema-versioning.md](../docs/schema-versioning.md) for the operating model.
