# Linear Question Intake Example

## Situation

Linear issue `APP-118` says:

```text
Improve export flow. Users are confused.
```

The issue is too vague for planning.

## Command

```text
/hvn:linear-intake APP-118
```

## Issue-Derived Gaps

- User segment is unclear.
- Export surface is unclear.
- Confusion signal is unclear.
- Success criteria are missing.

## First Question

```text
For APP-118, which export surface is causing confusion, and what are users trying to export?
```

## Answer

```text
The invoice PDF export. Users expect a preview before downloading, but the current button downloads immediately.
```

## Linear Update

The agent posts a concise issue comment:

```text
Question flow update:

- Objective: Clarify invoice PDF export confusion before spec.
- Questions answered: Export surface is invoice PDF; users expect preview before download.
- Inferred constraints: Preserve download, add or clarify preview behavior.
- Unresolved questions: Which user segment and what success metric?
- Waiting on: product owner.
- Ready for next step: Not yet.
- Next command: hvn-question-flow or hvn-spec after one more answer.
```

If Linear access is blocked, the same content goes into `templates/linear-question-sync.md`.
