---
name: hvn-core
description: Apply HVN's core operating principles, artifact discipline, verification policy, and context rules.
---

# HVN Core

## What This Skill Is

The core governance skill for HVN work. It applies the defaults layer, active profile, routing policy, Linear-first work management, artifact discipline, verification policy, and context rules.

## Trigger

Use whenever an HVN workflow starts or when another HVN skill needs shared policy.

## Do Not Trigger

Do not use as a substitute for a more specific skill when onboarding, QA, review, or shipping is requested.

## Required Inputs

- User goal
- Current project state

## Optional Inputs

- Existing artifacts
- Tool availability

## Workflow

1. Identify whether the project is Linear-first or opt-out.
2. Apply `HVN.defaults.md` and the active profile.
3. Identify the current HVN mode.
4. Preserve context boundaries.
5. Select the narrowest applicable skill through `hvn-router`.
6. Require artifacts for meaningful decisions.
7. Verify claims before completion.

## Expected Outputs

- Mode selection
- Routing expectations
- Artifact expectations
- Verification expectations

## Quality Bar

The agent should be explicit about assumptions, skipped gates, and verification limits.

## Common Failure Modes

- Treating a vague request as implementation-ready.
- Mixing blind QA with implementation knowledge.
- Claiming tests or visual inspection without evidence.
- Ignoring Linear-first handling for non-trivial work.
- Ignoring an explicit full-output request.

## Related HVN Skills And Commands

All HVN skills and commands.
