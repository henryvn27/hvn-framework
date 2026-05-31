# Example Workflow Cost Report

## Summary

A workflow can be operationally expensive even when it succeeds. This example shows a run with moderate elapsed time but low confidence on usage data.

## Signals

- total elapsed time was acceptable
- retry burden was concentrated in scope clarification
- token and cost fields were unavailable, so comparison should rely on time and retries instead

## Interpretation

This run is suitable for comparing against future versions on:

- time per success
- retries per successful run
- whether the same stage keeps causing rework
