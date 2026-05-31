# Spec From Idea Example

## Idea

```text
Improve customer health dashboard.
```

## Spec Excerpt

```text
Title: Customer Health Risk Dashboard v1
Problem: CSMs cannot quickly identify which accounts need attention before weekly check-ins.
Objective: Show at-risk accounts with clear risk reasons.
In scope: usage, overdue invoice, and unresolved support ticket risk signals.
Later phase: risk score weighting and trend charts.
Out of scope: automated emails, billing changes, and CRM writeback.
Target users: customer success managers.
Constraints: preserve existing dashboard shell and table component.
Acceptance criteria:
- CSM can view a list of at-risk accounts.
- Each account shows at least one risk reason.
- Empty state appears when no accounts are at risk.
Verification criteria:
- Run dashboard tests.
- Manually verify table, empty state, and keyboard navigation.
```

## Result

The spec is ready for `hvn-spec-check` and planning because scope, constraints, acceptance, and verification are explicit.
