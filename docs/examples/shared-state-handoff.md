# Example Shared State Handoff

## Situation

A planner finishes the plan and hands the run to a builder and QA partner working in parallel.

## Shared State Snapshot

- active phase: build
- next expected phase: review and QA
- approved scope: plan phase 1 through 3 only
- builder owns implementation progress
- QA owns launch readiness and first-look notes
- active blocker: waiting on one fixture decision

## Why This Helps

The builder and QA role can read the same coordination surface without inventing separate private summaries.
