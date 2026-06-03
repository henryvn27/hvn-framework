---
name: orca-impeccable
description: Wrap the upstream Impeccable design pack as a first-class ORCA workflow surface.
---

# ORCA-HVN Impeccable Wrapper

## What This Skill Is

A wrapper skill that lets ORCA route design-heavy work into the maintained Impeccable pack while keeping ORCA responsible for repo-visible workflow structure, attribution, and adjacent artifacts.

## Trigger

Use when the user asks for Impeccable directly, wants ORCA to feel like Impeccable is built in, or needs strong frontend design guidance that is better served by the upstream Impeccable pack than by repo-local ORCA guidance alone.

## Do Not Trigger

Do not use for backend work, generic implementation tasks, or minor styling tweaks that do not need Impeccable's vocabulary or tooling.

## Required Inputs

- target UI area or design problem

## Optional Inputs

- chosen frontend stack
- active harness
- desired Impeccable mode such as shape, critique, polish, audit, or detector

## Exact Workflow

1. Confirm that the task is design-heavy.
2. Open `integrations/impeccable.md`.
3. Route the user to the strongest Impeccable path for the active harness.
4. Prefer the upstream Impeccable install or update path instead of inventing a local ORCA-maintained version.
5. Keep ORCA artifacts in sync if the design pass changes scope, plan, QA expectations, or review criteria.
6. State clearly that ORCA is wrapping Impeccable and not claiming the upstream design language as repo-native work.

## Expected Outputs

- wrapper recommendation or setup path
- clear next step in ORCA if the design pass affects broader delivery work

## Quality Bar

The wrapper should make Impeccable easier to use from ORCA, not hide provenance or create a second ambiguous workflow surface.
