---
name: hvn-receipts
description: Produce compact execution receipts that summarize a run, its artifacts, verification, approvals, and unresolved risk.
---

# HVN Receipts

## What This Skill Is

A summarization skill for turning a meaningful run into a compact execution receipt.

## Trigger

Use after meaningful implementation, QA, review, replay, restore, or runtime-routing work that should be inspectable later.

## Inputs

- run trace
- work identity
- spec, milestone, or goal reference
- verification evidence
- approval record

## Workflow

1. Read the trace and key linked artifacts.
2. Summarize the actions taken.
3. Summarize artifacts touched.
4. Record verification, status, approvals, and unresolved risk.
5. Keep the result compact.

## Quality Bar

The receipt should be concise, reviewable, and linked to deeper evidence rather than duplicating it.
