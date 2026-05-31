# hvn-docs

## Purpose

Route documentation work, wiki maintenance, freshness review, and docs-system updates through one consistent workflow.

## When To Use

Use when:

- a user asks where a topic should live
- README, start-here, guides, indexes, or wiki pages need updates
- a feature change likely requires docs routing updates
- the docs surface feels stale, fragmented, or hard to navigate

## Required Inputs

- Current doc change request or affected feature area

## Optional Inputs

- Related work item in Linear or opt-out record
- Changed files
- User-facing behavior change summary

## Linear Context

- Expects: issue ID, current state, linked feature artifacts when Linear-first mode is active
- Reads: issue description, linked spec or plan, recent comments, affected docs
- Posts: optional docs refresh note or wiki update note
- Human approval: not required for routine doc maintenance

## Opt-Out Context

If the user does not want Linear, record the doc update plan in the chosen durable artifact.

## Workflow

1. Identify the affected user journey, feature area, host path, or workflow surface.
2. Decide which canonical doc owns the detail.
3. Update the routing layer if the top-level experience changed:
   - `README.md`
   - `docs/start-here.md`
   - `docs/README.md`
   - indexes
   - wiki summary pages
4. Update contributor or ownership docs if maintenance behavior changed.
5. Run docs validation and routing checks.
6. Produce a concise refresh note when the work should be synced back to a durable record.

## Outputs And Artifacts

- Updated docs or wiki pages
- Optional `templates/doc-refresh-note.md`
- Optional `templates/wiki-update-note.md`
- Validation results

## Failure Cases

- If the requested change would create duplicate deep docs, route into an existing page instead.
- If the right canonical home is unclear, update `docs/information-architecture.md` first.

## Related Commands And Skills

- Commands: `hvn-help`, `hvn-route`, `hvn-onboard`, `hvn-full-output`
- Skills: `hvn-core`, `hvn-router`, `hvn-full-output`, `hvn-docs-system`
