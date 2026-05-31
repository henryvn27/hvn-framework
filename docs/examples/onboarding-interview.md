# Onboarding Interview Example

## Initial Idea

```text
I want a dashboard for customer health.
```

## Interview Round 1

```text
Who uses the dashboard, and what decision should it help them make?
```

Answer:

```text
Customer success managers. They need to know which accounts are at risk before weekly check-ins.
```

## Interview Round 2

```text
What signals should count as risk for v1?
```

Answer:

```text
Low product usage, overdue invoices, and unresolved support tickets.
```

## Interview Round 3

```text
Is this a new app or an existing repo, and are there constraints we need to preserve?
```

Answer:

```text
Existing Next.js app. Use the current dashboard shell and table components.
```

## Intake Output

- Problem statement: CSMs lack a fast way to identify at-risk accounts before check-ins.
- Intended outcome: show accounts with risk signals and reasons.
- Environment: existing Next.js app.
- Constraints: preserve dashboard shell and table components.
- Success criteria: CSM can identify top risk accounts and why each is flagged.
- Ready for spec: yes.
