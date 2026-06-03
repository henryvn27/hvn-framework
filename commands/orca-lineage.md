# orca-lineage

## Purpose

Record or inspect artifact lineage across an ORCA Framework workflow.

## When To Use

Use when an artifact needs provenance, supersession tracking, or downstream dependency clarity.

## Required Inputs

- artifact
- artifact type

## Optional Inputs

- upstream artifacts
- downstream artifacts
- superseding artifact

## Workflow

1. Identify the artifact.
2. Link what produced it.
3. Link what it depends on.
4. Link what superseded it, if any.
5. Link what depends on it downstream.

## Outputs And Artifacts

- `templates/artifact-lineage.md`

## Failure Cases

- If provenance is incomplete, leave it explicit rather than guessing.

## Related Commands And Skills

- Commands: `orca-receipt`, `orca-trace`
