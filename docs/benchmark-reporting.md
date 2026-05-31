# Benchmark Reporting

Benchmark reporting should stay lightweight and inspectable.

## Minimum Expectations

- the benchmark case set exists
- each case has the required fields
- each benchmark run produces a readable report
- comparisons explain what changed, not just the scores

## CI Role

CI should validate that benchmark files and report templates exist and are structurally complete. CI does not attempt to automatically judge onboarding or spec quality.

## Reviewer Role

Human reviewers should look for:

- repeated failure patterns across cases
- improvements that hold across more than one scenario
- regressions in scope control, question quality, or acceptance criteria quality
