# QA To Regression

ORCA Framework should not let important QA findings disappear after a bug is fixed. The framework needs a structured way to convert the highest-value findings into reusable regression work.

## Purpose

Use QA-to-regression when a finding from QA, review, design review, debugging, or bug triage should become a reusable regression task.

## Important Constraint

Not every QA finding is automatically a good regression test.

Generated regression tasks still need human review. Prefer a deterministic backbone first and AI assistance second.

## Supported Sources

- blind QA
- briefed QA
- design review
- bug review
- debugging output
- legacy behavior extraction

## Regression Task Types

- manual regression checklist item
- deterministic UI regression scenario
- API regression scenario
- acceptance regression check
- visual regression candidate
- flaky-risk watch item

## Priority Outcome

Each generated regression task should be classified as:

- test now
- backlog
- watch only

## Task Shape

Use:

- [templates/regression-candidate.md](../templates/regression-candidate.md) to capture a candidate derived from a finding
- [templates/regression-task.md](../templates/regression-task.md) to promote the candidate into a reusable regression task

For portable machine-readable exchange, use:

- `schema/versions/v1/qa-finding.schema.json`
- `schema/versions/v1/regression-task.schema.json`

## What Makes A Good Regression Task

A good regression task has:

- a clear source finding
- deterministic reproduction where possible
- a clear verification path after fix
- a justified automation level
- notes about fragility or environment risk when relevant

## What To Avoid

- vague "test this again sometime" tasks
- tasks with no clear surface or expected behavior
- over-automating fragile flows before the scenario is stable

## Legacy Modernization Use

For legacy work, regression tasks should capture current behavior before modernization changes begin. Favor characterization checks, manual reproduction paths, and high-value business-rule coverage before broad rewrites.

Portable schemas help preserve those findings when moving them between harnesses, trackers, or regression tooling, but human review still decides whether the task is worth keeping.

In delegated workflows, the controller should ingest executor QA outputs before deciding whether a finding becomes a regression task.
