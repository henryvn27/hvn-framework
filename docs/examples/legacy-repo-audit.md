# Example Legacy Repo Audit

## Scope Inspected

- monolith repo
- billing module
- invoice generation job
- existing smoke test script

## Current Architecture

The billing flow starts in a scheduler, loads account state through an older ORM layer, applies pricing rules in service objects, and writes invoice records before sending notifications.

## Dependency And Call-Chain Notes

- scheduler calls invoice job
- invoice job calls billing service
- billing service calls pricing rules and account repository
- notification is a side effect after invoice persistence

## Business Logic Hotspots

- discount stacking rules
- grace-period handling
- region-specific tax behavior

## Known Unknowns

- customer-specific overrides are stored in config but not documented
- notification retries are not covered by tests

## Recommended First Modernization Slice

Extract pricing-rule behavior into characterization tests before changing the service structure.
