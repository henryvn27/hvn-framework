# GitHub Setup Example

## Situation

ORCA Framework needs to open a draft issue for an `Adopt now` ecosystem finding.

## Guidance

GitHub is required for direct issue creation. The fastest path is a harness connector or `gh` CLI auth. If neither is available, ORCA Framework writes the draft issue to `reports/ecosystem-sweep/draft-issues/` and the user can file it manually.

## Validation

- Confirm the target repo is reachable.
- Confirm issue creation scope is available.
- If write scope is missing, use the local draft issue fallback.
