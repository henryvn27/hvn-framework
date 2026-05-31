# Update Recovery

Recovery is the user-facing side of rollback and repair.

## Recovery Should Explain

- what failed
- whether rollback already happened
- whether manual recovery is needed
- which version is now active
- what to try next

## Recovery Order

1. stop further update attempts
2. inspect failure signals
3. rollback if allowed
4. re-run doctor or validation
5. capture update evidence for later improvement
