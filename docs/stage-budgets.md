# Stage Budgets

Stage budgets define different operational limits for different phases of work.

## Purpose

ORCA-HVN should not treat planning, implementation, QA, and unattended background progress as one undifferentiated pool.

## Suggested Dimensions

- wall-clock time
- step or iteration count
- retry count
- optional token or cost estimate when available
- risk level

## Background Connection

Background mode should use stage-specific budgets:

- planning can usually tolerate more read-only iterations
- implementation should have stricter write and retry limits
- QA prep should bias toward artifact generation and evidence gathering
- goal-oriented background runs should stay milestone-sized and stop at contract boundaries

## Budget Rule

If a stage budget is exhausted, the run should stop and emit a receipt instead of continuing optimistically.
