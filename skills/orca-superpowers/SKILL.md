---
name: orca-superpowers
description: Wrap the upstream Superpowers workflow as a first-class ORCA execution surface.
---

# ORCA Framework Superpowers Wrapper

## What This Skill Is

A wrapper skill that lets ORCA route coding workflow into the maintained Superpowers pack while keeping ORCA responsible for visible workflow governance, approvals, attribution, and surrounding artifacts.

## Trigger

Use when the user asks for Superpowers directly, wants ORCA to adopt Superpowers-style working patterns, or would benefit from the upstream pack's planning, worktree, and execution discipline.

## Do Not Trigger

Do not use when the task only needs ORCA's local workflow structure, or when the upstream Superpowers pack would add ceremony without clear execution value.

## Required Inputs

- implementation target or coding work item

## Optional Inputs

- active harness
- desired Superpowers segment such as brainstorming, planning, or execution
- current install state

## Exact Workflow

1. Confirm that Superpowers is a strong fit.
2. Open `integrations/superpowers.md`.
3. Route to the appropriate install, update, or usage path for the harness.
4. Prefer the upstream Superpowers packaging and updates instead of inventing a repo-local ORCA-maintained version.
5. Keep ORCA artifacts in sync if the wrapped workflow changes spec, plan, review, or delivery state.
6. State clearly that ORCA is wrapping Superpowers and not claiming the upstream methodology as solely repo-native behavior.

## Expected Outputs

- wrapper recommendation or setup path
- clear ORCA next step before or after the wrapped execution phase

## Quality Bar

The wrapper should reduce friction and make ORCA stronger. It should not create two competing orchestrators or duplicate upstream instructions without reason.
