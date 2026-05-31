---
name: orca-core
description: Apply ORCA-HVN's core operating principles, artifact discipline, verification policy, and context rules.
---

# ORCA-HVN Core

## What This Skill Is

The core governance skill for ORCA-HVN work.

## Trigger

Use whenever an ORCA-HVN workflow starts or when another ORCA-HVN skill needs shared policy.

## Do Not Trigger

Do not use as a substitute for a more specific skill when onboarding, QA, review, or shipping is requested.

## Required Inputs

- User goal
- Current project state

## Optional Inputs

- Existing artifacts
- Tool availability

## Workflow

1. Identify the current ORCA-HVN mode.
2. Preserve context boundaries.
3. Select the narrowest applicable skill.
4. Require artifacts for meaningful decisions.
5. Verify claims before completion.

## Expected Outputs

- Mode selection
- Artifact expectations
- Verification expectations

## Quality Bar

The agent should be explicit about assumptions, skipped gates, and verification limits.

## Common Failure Modes

- Treating a vague request as implementation-ready.
- Mixing blind QA with implementation knowledge.
- Claiming tests or visual inspection without evidence.

## Related ORCA-HVN Skills And Commands

All ORCA-HVN skills and commands.
