# Example Versioned Iteration

## Objective

Add a coordination layer for shared state, human checkpoints, and run inspection.

## Scope

- Included: docs, command definitions, skills, templates, examples, validation references
- Excluded: custom UI, remote state server, automated issue-state mutation

## Commits

- `9c090b7 Add coordination state and inspection layer`

## Validation

- `./scripts/check-reliability.sh`
- `./scripts/check-improvement-systems.sh`
- `./scripts/validate-repo.sh`

## Changelog

Added under `Unreleased`.

## Manual Steps

Push requires GitHub auth with workflow-file permission because this branch also contains CI workflow changes.
