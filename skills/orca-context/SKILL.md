---
name: orca-context
description: Resolve ambiguous recent-work references by identifying the actual artifact, app, or screen context first.
---

# ORCA Framework Context

## What This Skill Is

An ambiguity-resolution workflow for cases where the user means a concrete thing but has not named it precisely.

## Trigger

Use when the request points at recent or visible context rather than a clearly named artifact.

## Do Not Trigger

Do not use when the target file, app, issue, or artifact is already explicit.

## Required Inputs

- ambiguous reference

## Optional Inputs

- recent artifacts
- active harness
- screen or history tooling when available

## Exact Workflow

1. Check repo-local and textual evidence first.
2. If Chronicle or equivalent screen-history tooling is available, confirm it is currently running and that the capture timestamp is fresh before trusting it.
3. Use screen or history tools only to identify the likely target.
4. Use OCR only as a search aid.
5. Upgrade quickly to the stronger source of truth once identified.
6. State freshness and confidence.
7. Route into the correct next ORCA command.

## Expected Outputs

- resolved target
- evidence note
- next-step recommendation

## Quality Bar

The workflow should reduce ambiguity without treating OCR or screenshot hints as stronger than the real artifact.

## Common Failure Modes

- over-relying on screen evidence
- failing to say when confidence is weak
- continuing the whole task from screenshots instead of pivoting to the artifact itself
- treating stale screen history as if it reflects the current target

## Relationship To Other ORCA Framework Skills And Commands

Pairs with `orca-controller-mode`, `orca-runtime-adaptation`, and `orca-explain`.
