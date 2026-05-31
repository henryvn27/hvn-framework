# orca-docs

## Purpose

Route a documentation question, plan a docs refresh, or inspect what doc surfaces should change after a framework update.

## When To Use

Use when:

- a user asks where to start
- a new feature needs docs routing
- the wiki or README may be stale
- a contributor needs to know which docs should change

## Required Inputs

- current question, feature, or changed surface

## Optional Inputs

- target audience
- affected commands
- affected guides
- affected wiki pages

## Workflow

1. Use `orca-docs-system`.
2. Identify whether the need is intro, guide, reference, contributor docs, or wiki routing.
3. Recommend the smallest useful doc path first.
4. If a refresh is needed, identify impacted pages and refresh notes.

## Outputs And Artifacts

- docs routing recommendation
- doc refresh scope
- `templates/doc-refresh-note.md` when drift is detected
- `templates/wiki-update-note.md` when wiki routing is stale

## Failure Cases

- If the request is really about execution, route back to the appropriate command.
- If the docs issue is broad but unspecified, start with `docs/start-here.md`, `docs/README.md`, and `docs/feature-index.md`.

## Related Commands And Skills

- Commands: `orca-help`, `orca-status`, `orca-runtime`, `orca-next`
- Skills: `orca-docs-system`

