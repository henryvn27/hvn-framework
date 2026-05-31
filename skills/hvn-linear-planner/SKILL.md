---
name: hvn-linear-planner
description: Create Linear-ready specs, plans, approval requests, and state recommendations.
---

# HVN Linear Planner

## What This Skill Is

A planning workflow that turns issue context into comments suitable for Linear review and approval.

## Trigger

Use for `Ready for Spec`, `Spec Ready`, `needs-plan`, or equivalent gates.

## Do Not Trigger

Do not use for already-approved implementation work unless scope changed.

## Required Inputs

- Issue ID
- Issue context
- Spec or planning goal

## Optional Inputs

- Discovery notes
- Verification commands
- Related PRs or artifacts

## Exact Workflow

1. Confirm the issue belongs to the correct Linear project.
2. Convert issue context into a structured spec or plan.
3. Use Linear comment templates for readability.
4. Include non-goals, preserve-stack assumptions, and verification.
5. State whether human approval is required.
6. Recommend the next state without bypassing approval.

## Expected Outputs

- Linear spec comment
- Linear plan comment
- Approval request

## Quality Bar

The plan should be buildable by an agent that reads only the issue thread and linked artifacts.

## Common Failure Modes

- Posting a plan without acceptance criteria.
- Hiding scope changes.
- Failing to request approval before build.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-plan`, `hvn-linear-plan-comment`, and `hvn-build`.
