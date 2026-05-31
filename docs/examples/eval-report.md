# Example Eval Report

## Eval Run

- Date: 2026-05-30
- Reviewer: framework maintainer
- Scope: trajectory review of `hvn-spec` and `hvn-plan` on a medium-complexity issue

## Summary

The workflow passed the hard checks for spec completeness, approval handling, and artifact linkage. It scored lower on efficiency because the agent repeated discovery that already existed in the issue thread.

## Case Results

| Case ID | Result | Notes |
| --- | --- | --- |
| EVAL-01 | Pass | Spec covered goals, non-goals, and acceptance criteria |
| EVAL-02 | Pass | Plan requested approval before build |
| EVAL-03 | Partial | Re-read context that was already summarized |

## Common Failure Patterns

- redundant discovery
- weak stop-reason logging when no trace exists

## Recommendations

- tighten artifact reuse guidance in `hvn-plan`
- require trace creation for higher-risk runs
