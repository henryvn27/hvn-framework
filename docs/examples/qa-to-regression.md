# Example QA To Regression

## Source Finding

A blind QA run found that search results disappear after applying a date filter and clearing it.

## Candidate Classification

- regression type: deterministic UI regression scenario
- suggested automation level: semi-automated
- promotion recommendation: test now

## Why It Was Promoted

The reproduction path is stable, the behavior is user-visible, and the issue had already recurred once.

## Verification Path After Fix

1. search for a term with at least five results
2. apply a date filter
3. clear the date filter
4. confirm the original result set returns
