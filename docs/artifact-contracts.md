# Artifact Contracts

ORCA-HVN artifact contracts define the minimum required shape for durable framework artifacts. They are not meant to replace prose. They are meant to prevent vague, incomplete, or non-comparable handoffs.

## Why Contracts Exist

Contracts improve:

- consistency across harnesses and agents
- easier review and handoff
- future validation and automation
- less ambiguity about what "good enough" means

## How To Use Contracts

Use a contract when creating or reviewing a durable artifact. The contract tells you:

- which fields are required
- which fields are optional
- what evidence is expected
- what quality bar applies

The contracts live in [templates/contracts/](../templates/contracts/).
Portable machine-readable companions live in [schema/](../schema/README.md).

## Core Contracts

- [spec-contract.md](../templates/contracts/spec-contract.md)
- [run-memory-contract.md](../templates/contracts/run-memory-contract.md)
- [qa-brief-contract.md](../templates/contracts/qa-brief-contract.md)
- [regression-pack-contract.md](../templates/contracts/regression-pack-contract.md)
- [trace-contract.md](../templates/contracts/trace-contract.md)
- [eval-contract.md](../templates/contracts/eval-contract.md)

## Good Enough Standard

An artifact is good enough when:

- every required field is present
- assumptions and evidence are separated
- a downstream agent could act on it without inventing missing structure
- the artifact matches the workflow stage it claims to represent

## Contracts Versus Full Docs

Contracts are shape constraints.
Full docs explain the operating model.

Use contracts for repeatable structure.
Use prose docs for judgment, philosophy, examples, and edge cases.
Use schemas for versioned validation and cross-system mapping.

See:

- [docs/portable-artifacts.md](portable-artifacts.md)
- [docs/schema-versioning.md](schema-versioning.md)
- [docs/artifact-mapping.md](artifact-mapping.md)
