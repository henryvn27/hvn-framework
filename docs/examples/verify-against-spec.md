# Verify Against Spec Example

## Acceptance Criteria

```text
- CSM can view a list of at-risk accounts.
- Each account shows at least one risk reason.
- Empty state appears when no accounts are at risk.
```

## Verification Report

```text
Criterion: CSM can view a list of at-risk accounts.
Result: pass.
Evidence: dashboard test renders three at-risk sample accounts.

Criterion: Each account shows at least one risk reason.
Result: pass.
Evidence: unit test covers usage, invoice, and support ticket reasons.

Criterion: Empty state appears when no accounts are at risk.
Result: fail.
Evidence: dashboard renders blank table body.
Action: fix empty state before ship.
```

## Rule

Verification reports should cite the spec criterion they tested. Missing criteria should cause a spec update or a test gap note.
