# hvn-regression

## Purpose

Create or run regression packs from QA findings, review findings, bugs, or incidents.

## When To Use

Use after a bug, QA failure, review blocker, incident, or before ship for a touched area with known risk.

## Required Inputs

- Finding source
- Affected platform
- Reproduction or retest scenario

## Optional Inputs

- Linear issue ID
- Screenshots
- PR or commit
- Existing regression packs

## Linear Context

- Reads: QA comments, review findings, bug reports, linked artifacts, touched areas
- Posts: regression pack or regression run result
- Trigger: QA finding, review blocker, bug fix, pre-ship regression
- Human approval: required to skip high-risk regression packs before ship

## Workflow

1. Extract source, platform, reproduction steps, expected and actual behavior, risk, and artifacts.
2. Write a reusable regression pack.
3. Run relevant packs when verifying a fix or preparing to ship.
4. Link results back to the issue.

## Outputs And Artifacts

- `templates/regression-pack.md`

## Failure Cases

- If reproduction steps are missing, create a pack marked incomplete and request details.
- If a pack is high risk and not run, block ship or require explicit waiver.

## Related Commands And Skills

- Commands: `hvn-test-regression`, `hvn-ship`
- Skills: `hvn-regression-pack`, `hvn-linear-release`
