# ORCA-HVN Project Status

## Current Project State

- Active work item: repository maintenance and validation hardening until a newer Linear-linked work item or opt-out record replaces it
- Active milestone: `0.2` hardening and release prep per `ROADMAP.md`
- Current workflow phase: maintenance and verification
- Active harness: runtime-specific; confirm with `orca-status` for the current session
- Active goal: no checked-in goal contract

## Required Integrations

- Linear when operating in Linear-first mode
- GitHub when direct issue, PR, or check interaction is required

## Existing Artifacts

- Core workflow and operating policy in `ORCA-HVN.md`, `docs/workflow.md`, and `docs/linear-workflow.md`
- Install and validation surface in `install/` and `.github/workflows/`
- Orientation and controller-entry docs in `docs/project-orientation.md` and `docs/controller-agent-integration.md`
- Compatibility baseline in `docs/compatibility-matrix.md` with reports under `reports/compatibility/`

## Missing Artifacts

- Current Linear issue or explicit opt-out record for the active maintenance lane
- Fresh orientation artifact generated from `templates/project-orientation.md` when a controller enters mid-stream
- Latest checked-in receipt or inspection artifact for the most recent non-trivial repo-maintenance pass

## Blocked Items

- Linear access must be revalidated in the active harness before Linear-first updates can be relied on
- Push to GitHub remains blocked unless credentials include `workflow` scope for workflow-file updates

## Recommended Next Action

- Run `orca-orient` and attach the next non-trivial repo-maintenance pass to a Linear issue or declared opt-out record before delegating new work

## Relevant Docs And Commands

- `docs/project-orientation.md`
- `docs/controller-agent-integration.md`
- `docs/delegation.md`
- `docs/result-ingestion.md`
- `orca-status`
- `orca-orient`
- `orca-delegate`
- `orca-ingest`
