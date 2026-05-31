# Scope Splitting Example

## Raw Requirements

```text
Show customer health, include risk reasons, add trend charts, email owners automatically, and sync notes to CRM.
```

## Split

### v1 / Must-Have

- show at-risk accounts
- show at least one risk reason
- preserve current dashboard shell
- include empty state

### Later Phase / v2

- trend charts
- weighted risk score
- owner notification email

### Out Of Scope

- CRM writeback
- billing system changes
- automated account reassignment

## Outcome

The builder implements only v1. Later work is captured without expanding current acceptance criteria.
