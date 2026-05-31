# Example Retry Burden Analysis

## Situation

Three recent runs all succeeded, but each retried the QA-briefing stage two or more times.

## Analysis

The final outputs look acceptable, but the workflow is paying a hidden tax:

- repeated context narrowing
- repeated artifact edits
- slower time to ship readiness

## Recommendation

Review the QA brief contract and the context-briefing workflow before assuming the overall process is healthy.
