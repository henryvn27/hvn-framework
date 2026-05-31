# Update Verification

Verification happens before apply.

No exceptions.

## Verify These Things

- source trust
- integrity or checksum state
- version ordering
- channel compatibility
- package completeness
- migration availability
- local compatibility constraints

## Verify In This Order

1. Is the update source trusted?
2. Is the version valid for the chosen channel?
3. Is the package complete?
4. Are required migrations present?
5. Will this break pinned plugin, harness, or integration assumptions?
6. Is rollback prepared?

## Output

Use [templates/update-verification-report.md](../templates/update-verification-report.md).
