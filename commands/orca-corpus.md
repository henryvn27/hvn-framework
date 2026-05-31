# orca-corpus

## Purpose

Configure, inspect, or explain ORCA persistent corpus support.

## When To Use

Use when the user wants ORCA to remember and reuse a durable vault or corpus across sessions or projects.

## Required Inputs

- Corpus intent: inspect, enable, disable, or update

## Optional Inputs

- Corpus folder path
- Reference permission
- Write-back permission
- Allowed write-back kinds
- Global or project scope

## Workflow

1. Determine whether the user wants global setup, project setup, or status only.
2. Ask for an explicit corpus path instead of guessing one.
3. Separate reference permission from write-back permission.
4. Default write-back to off unless the user explicitly opts in.
5. Apply precedence rules so project safety can narrow or disable global access.
6. If the path is missing or changed, fail closed and note re-index needs.

## Outputs And Artifacts

- `templates/corpus-global-settings.md`
- `templates/corpus-project-settings.md`
- `templates/corpus-writeback-policy.md`
- `templates/corpus-index-status.md`

## Related Commands And Skills

- Commands: `orca-research`, `orca-integration`, `orca-docs`
- Skills: `orca-corpus-support`, `orca-graph-vault-support`
