# Background Risk Tiers

Background mode should use risk tiers so unattended work is explicit and auditable.

## Tier 0

Read-only analysis and planning.

Allowed:

- repo reading
- research
- summary generation
- planning
- drafting notes

Oversight expectation:

- review the receipt later

## Tier 1

Limited local edits with receipts.

Allowed:

- small docs edits
- scoped test additions
- tightly bounded low-risk local file changes

Oversight expectation:

- next-session review

## Tier 2

Broader local edits requiring morning review.

Allowed:

- larger bounded implementation slices
- multi-file low-risk refactors
- richer local execution with stronger loop guards

Oversight expectation:

- explicit morning audit before follow-on risky work

## Tier 3

High-risk actions.

Examples:

- destructive operations
- irreversible external actions
- live production changes
- actions requiring interactive approval or secrets

Tier 3 is disallowed in unattended mode.
