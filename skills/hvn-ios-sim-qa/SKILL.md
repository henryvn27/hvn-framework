---
name: hvn-ios-sim-qa
description: Run iOS simulator QA with MCP support, including blind and guided passes.
---

# HVN iOS Simulator QA

## What This Skill Is

An iOS QA workflow for agents using simulator MCP tools.

## Trigger

Use when testing an iOS app through a simulator, especially with blind first-look requirements.

## Do Not Trigger

Do not use for web apps or when no iOS app surface is available.

## Required Inputs

- Simulator target or launch instructions

## Optional Inputs

- Device model
- OS version
- Context packet for briefed pass
- Accessibility expectations

## Exact Workflow

1. State whether the pass is blind or briefed.
2. Launch or build the app through available simulator tooling.
3. Interact with visible UI only unless briefed otherwise.
4. Inspect accessibility-visible labels and navigation when tools support it.
5. Capture screenshots, logs, and reproduction steps when available.
6. Report observations, blockers, and confidence limits.

## Expected Outputs

- Blind pass: `templates/blind-qa-report.md`
- Briefed pass: `templates/guided-qa-report.md`

## Quality Bar

The tester must not use hidden project knowledge unless explicitly included in a context packet.

## Common Failure Modes

- Treating simulator launch success as product success.
- Ignoring accessibility tree mismatches.
- Using source code knowledge in a blind pass.

## Relationship To Other HVN Skills And Commands

Pairs with `hvn-blind-qa`, `hvn-context-brief`, and `hvn-test-regression`.
