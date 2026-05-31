---
name: hvn-blind-qa
description: Run a zero-context first-look QA pass and produce a realistic first-impression report.
---

# HVN Blind QA

## What This Skill Is

A first-look testing workflow that protects the tester from hidden project context.

## Trigger

Use when a user-facing product surface can be tested before the tester reads the spec or implementation notes.

## Do Not Trigger

Do not use after the tester has already read hidden project context. Use briefed QA instead.

## Required Inputs

- Product surface: URL, app, simulator target, CLI, or screenshot set

## Optional Inputs

- Device or viewport
- Tool capabilities

## Exact Workflow

1. State the context received and confirm hidden context is excluded.
2. Observe only exposed behavior and available accessibility-visible information.
3. Infer what the product is for.
4. Attempt plausible tasks without reading the spec.
5. Record confusion, dead ends, visual or interaction problems, and successful paths.
6. State evidence captured and what could not be observed.

## Expected Outputs

- Filled `templates/blind-qa-report.md`

## Quality Bar

The report should sound like a real first user, not a builder validating their own assumptions.

## Common Failure Modes

- Pretending to see UI when visual context is unavailable.
- Reading source code or specs.
- Editing the blind report after briefing.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-context-brief`, `hvn-test-briefed`, and `hvn-test-regression`.
