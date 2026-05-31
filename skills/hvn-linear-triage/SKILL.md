---
name: hvn-linear-triage
description: Triage Linear issues into HVN-ready work items with labels, missing questions, and next-gate recommendations.
---

# HVN Linear Triage

## What This Skill Is

A workflow for turning incoming Linear issues into clear HVN units of work.

## Trigger

Use when an issue is in triage, has `needs-triage`, or lacks enough context for spec or build.

## Do Not Trigger

Do not use when the issue already has an approved spec and plan.

## Required Inputs

- Issue ID
- Issue title and description

## Optional Inputs

- Project context
- Related issues
- Customer notes

## Exact Workflow

1. Read the issue and related context.
2. Identify missing user, job, platform, scope, risk, and acceptance context.
3. Recommend labels and next state.
4. Ask only blocking clarification questions.
5. Post or prepare a triage comment.

## Expected Outputs

- Triage comment
- Recommended labels
- Recommended next command

## Quality Bar

The issue should become specific enough for spec or be clearly blocked.

## Common Failure Modes

- Asking non-blocking questions.
- Combining unrelated requests in one issue.
- Skipping labels that route QA or security.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-linear-intake`, `hvn-onboard`, and `hvn-spec`.
