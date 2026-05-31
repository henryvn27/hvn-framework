# Update Rollback

Rollback is part of the design, not an emergency afterthought.

## Every Update Path Should Define

- what known-good version exists
- whether previous version retention is possible
- what triggers rollback
- who can trigger rollback
- what the user sees after rollback

## Trigger Conditions

- verification passed but post-update validation failed
- required workflow surface broke
- plugin or harness compatibility failure appeared
- startup or first-run validation regressed
- repeated high-confidence failure after update

## Rule

If rollback is not prepared, auto-apply should not happen.
