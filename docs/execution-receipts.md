# Execution Receipts

Execution receipts are compact, reviewable summaries of what a run did and how it ended.

## Purpose

Receipts answer:

- which run was this
- which harness executed it
- which spec, milestone, or goal it followed
- what actions were taken
- which artifacts were touched
- what verification ran
- what result status was reached
- which risks remain
- which approvals were used
- whether the run was controller-directed or directly executed

## What A Receipt Is Not

A receipt is not a full trace dump. Use traces for step-by-step reconstruction. Use receipts for fast inspection, comparison, handoff, and debugging.

## Good Receipt Shape

A good receipt is:

- short enough to review quickly
- linked to deeper artifacts
- specific about status and risk
- explicit about approvals and verification
- stable enough to compare across runs

## Relationship To Other Artifacts

- trace records what happened in detail
- receipt summarizes the outcome
- lineage links the receipt to upstream and downstream artifacts
- replay uses receipts to compare old and new runs
- restore uses receipts to identify known-good recovery points
- controller workflows use receipts to decide whether delegated work can be ingested, reviewed, or sent to QA
- background workflows use receipts to explain unattended progress, blocked permissions, and loop-guard exits
