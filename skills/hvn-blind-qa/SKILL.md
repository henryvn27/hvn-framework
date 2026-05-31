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
- Issue ID or opt-out work item identifier

## Optional Inputs

- Device or viewport
- Tool capabilities

## Exact Workflow

1. State the Linear issue reference or opt-out work item.
2. State the context received and confirm hidden context is excluded.
3. In Linear-first mode, accept only issue ID, platform, launch instructions, and optional one-sentence mission.
4. In opt-out mode, accept only the equivalent minimal launch context.
5. Observe only exposed behavior and available accessibility-visible information.
6. Infer what the product is for.
7. Attempt plausible tasks without reading the spec.
8. Record confusion, dead ends, visual or interaction problems, generic first-impression signals, and successful paths.
9. State evidence captured and what could not be observed.
10. Post or prepare the report for the same issue or work item.

## Spec Boundary

Blind QA does not read the spec before the first-look pass. After the blind report is saved, later briefed QA and review should compare findings against the approved spec and record any mismatch between first impression and specified behavior.

## Expected Outputs

- Filled `templates/blind-qa-report.md`
- `templates/linear-blind-qa-comment.md` when Linear-first mode is active

## Quality Bar

The report should sound like a real first user, not a builder validating their own assumptions.

## Common Failure Modes

- Pretending to see UI when visual context is unavailable.
- Reading source code or specs.
- Editing the blind report after briefing.
- Treating blind QA as spec verification before a briefed or informed pass.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-context-brief`, `hvn-test-briefed`, and `hvn-test-regression`.
