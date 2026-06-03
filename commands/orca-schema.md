# orca-schema

## Purpose

Define or inspect portable ORCA Framework artifact schemas and their versioned usage.

## When To Use

Use when:

- adding a portable schema for an artifact family
- checking which schema version applies
- documenting schema direction or compatibility

## Required Inputs

- artifact family

## Optional Inputs

- current artifact
- target mapping system
- desired schema change

## Workflow

1. Use `orca-portability`.
2. Identify the matching artifact contract and schema family.
3. Review version and compatibility notes.
4. Update schema, example, or migration docs as needed.

## Outputs And Artifacts

- schema files in `schema/versions/`
- schema examples in `schema/examples/`
- migration notes when needed

## Failure Cases

- If the artifact family is too unstable, document why schema work should wait.
- If the mapping target is lossy, record that explicitly instead of implying clean round-tripping.

## Related Commands And Skills

- Commands: `orca-validate-schema`, `orca-eval`, `orca-trace`
- Skills: `orca-portability`
