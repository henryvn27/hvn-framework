# hvn-test-blind

## Purpose

Run zero-context first-look QA and preserve the first impression as evidence.

## When To Use

Use when a user-facing product surface can be tested before the tester reads hidden context.

## Required Inputs

- App URL, executable, simulator target, CLI, or product surface

## Optional Inputs

- Linear issue ID or opt-out work item
- Device or viewport constraints
- Accessibility tools available
- One-sentence user mission

## Linear Context

- Expects: issue ID, platform, launch instructions, and optional one-sentence mission
- Reads: only allowed launch context during blind pass
- Posts: first-look QA findings, evidence, confidence limits, recommended next state
- Trigger: `In QA`, `blind-qa`
- Human approval: required to waive blocking blind QA findings

## Opt-Out Context

Write the blind report to the chosen record without exposing hidden context.

## Workflow

1. Use `hvn-blind-qa`.
2. Confirm no hidden spec or implementation context is included.
3. Observe the product surface.
4. Infer the product and attempt plausible tasks.
5. Record findings, evidence, and confidence limits.
6. Post the report to Linear or the opt-out record.

## Outputs And Artifacts

- `templates/blind-qa-report.md`
- `templates/linear-blind-qa-comment.md` when Linear-first mode is active

## Failure Cases

- If the tester already saw hidden context, run `hvn-test-briefed` instead.
- If the product cannot be launched, record the launch blocker.

## Related Commands And Skills

- Commands: `hvn-linear-qa-report`, `hvn-test-briefed`, `hvn-test-regression`
- Skills: `hvn-blind-qa`, `hvn-linear-qa`, `hvn-ios-sim-qa`, `hvn-web-qa`
