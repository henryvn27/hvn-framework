# hvn-receipt

## Purpose

Generate a compact execution receipt for a meaningful run.

## When To Use

Use after implementation, review, QA, replay, restore, or another meaningful workflow phase that should be easy to inspect later.

## Required Inputs

- run trace or equivalent evidence
- work reference

## Optional Inputs

- spec, milestone, or goal contract
- approval record
- metrics artifact

## Workflow

1. Use `hvn-receipts`.
2. Read the run trace and linked artifacts.
3. Summarize actions, artifacts, verification, status, risks, and approvals.
4. Write the execution receipt.

## Outputs And Artifacts

- `templates/execution-receipt.md`

## Failure Cases

- If the run has no usable evidence, state that the receipt is incomplete.
- If verification is missing, record that explicitly as unresolved risk.

## Related Commands And Skills

- Commands: `hvn-trace`, `hvn-status`
- Skills: `hvn-receipts`
