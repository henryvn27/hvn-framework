---
name: orca-pr-feedback
description: Collect and organize PR review comments and threads into a remediation queue.
---

# ORCA-HVN PR Feedback

## What This Skill Is

A PR feedback triage workflow that turns review threads into a concrete action queue.

## Trigger

Use when an active PR has top-level comments, review submissions, or inline review threads that need handling.

## Do Not Trigger

Do not use when no PR exists or when the goal is only to review code locally without GitHub context.

## Required Inputs

- PR or branch context

## Optional Inputs

- subset of threads to address
- linked work item

## Exact Workflow

1. Resolve the PR.
2. Gather top-level comments, review submissions, and inline threads with `scripts/fetch_comments.py` when GitHub is available.
3. Number actionable threads and summarize the remediation each needs.
4. Distinguish open, resolved, and outdated feedback.
5. Build a remediation queue instead of a blob summary.
6. Route the chosen set into implementation or reply work.

## Expected Outputs

- numbered feedback queue
- remediation summary
- next-step recommendation

## Quality Bar

A maintainer should be able to decide what to address next without rereading the whole PR UI first.

## Common Failure Modes

- missing inline review threads
- collapsing unrelated comments into one blob
- losing resolved vs open state
- dropping review submissions while only reading inline comments

## Relationship To Other ORCA-HVN Skills And Commands

Pairs with `orca-review`, `orca-delegation`, and `orca-ship`.
