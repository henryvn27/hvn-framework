# orca-attribution

## Purpose

Audit or document upstream influence, wrapping relationships, provenance, and third-party notice requirements.

## When To Use

Use when a feature borrows from an upstream workflow, integrates a third-party tool or host, adapts external material, or needs clearer credit and notice handling.

## Required Inputs

- Feature, file set, or project area under review

## Optional Inputs

- Candidate upstream repos or writings
- Known license information
- Known redistribution concerns

## Workflow

1. Use `orca-attribution`.
2. Identify upstream repos, tools, docs, or essays that materially shaped the target area.
3. Classify each relationship as inspiration, adaptation, workflow influence, direct wrapper, redistributed component, documentation influence, or compatibility target.
4. Update `UPSTREAM.md`.
5. Update `THIRD_PARTY_NOTICES.md`, `NOTICE`, or nearby provenance docs when required.
6. Improve README or feature-doc links when the relationship should be visible to GitHub visitors.

## Outputs And Artifacts

- `UPSTREAM.md`
- `templates/upstream-entry.md`
- `templates/attribution-check.md`
- provenance or notice updates when needed

## Failure Cases

- If the relationship is uncertain, record the uncertainty instead of overclaiming.
- If redistribution status is unclear, do not mark notice obligations as resolved without evidence.

## Related Commands And Skills

- Skills: `orca-attribution`
- Docs: `docs/attribution.md`, `docs/provenance.md`, `docs/wraps-vs-borrows.md`, `docs/licenses.md`
