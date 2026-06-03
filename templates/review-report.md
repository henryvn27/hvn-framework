# Review Report

## Context

State what was reviewed and what artifacts were available.
Be specific about the diff/commit, branch, files, and the user-facing surface (URL/screen/CLI) if applicable.

## Severity Scale

- P0: ship-stopper / data loss / security break
- P1: user-visible bug or serious regression risk
- P2: correctness/maintainability issue worth fixing soon
- P3: nit / readability / cleanup

## Findings

List findings ordered by severity. For each finding include:

- Severity (P0–P3)
- Location (file path, route, command, or screenshot)
- Problem (what is wrong)
- Impact (who gets hurt / what breaks)
- Fix (what to change)

## Test Coverage

State what validation exists and what is missing.

## Security Notes

Record security-relevant observations.

## Accessibility And UX Notes

Record user-facing issues when applicable.

## Decision

State whether the change is blocked, needs fixes, or can proceed.
If it can proceed, call out residual risk in one blunt sentence.

## Anti-Generic Check

- Remove praise that does not change the decision.
- Make each finding readable without extra interpretation.
- If a statement could describe ten unrelated bugs, rewrite it more concretely.
