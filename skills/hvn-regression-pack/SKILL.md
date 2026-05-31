---
name: hvn-regression-pack
description: Turn bugs, QA findings, and review findings into reusable regression packs.
---

# HVN Regression Pack

## What This Skill Is

A workflow for preserving retest scenarios discovered during review and QA.

## Trigger

Use after blind QA findings, guided QA failures, review blockers, bug reports, incidents, and pre-ship regression checks.

## Do Not Trigger

Do not use when a finding is too vague to reproduce and no clarifying context is available.

## Required Inputs

- Finding source
- Affected platform
- Reproduction or retest scenario

## Optional Inputs

- Screenshots
- Logs
- PR links
- Related specs

## Exact Workflow

1. Extract source, platform, reproduction steps, expected behavior, actual behavior, risk, and artifacts.
2. Create a reusable regression pack.
3. Link it to the source issue and product area.
4. Run relevant packs during fix verification and ship readiness.
5. Update pack status after retest.

## Expected Outputs

- `templates/regression-pack.md`

## Quality Bar

The pack should be specific enough for a future agent to rerun without rediscovering the bug.

## Common Failure Modes

- Capturing vague symptoms without steps.
- Failing to mark risk.
- Not linking the pack to ship readiness.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-test-regression`, `hvn-ship`, and `hvn-linear-release`.
