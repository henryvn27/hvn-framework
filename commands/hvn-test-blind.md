# hvn-test-blind

## Purpose

Run zero-context first-look QA and preserve the first impression as evidence.

## When To Use

Use when a user-facing product surface can be tested before the tester reads hidden context.

## Required Inputs

- App URL, executable, simulator target, or product surface

## Optional Inputs

- Device or viewport constraints
- Accessibility tools available

## Workflow

1. Use `hvn-blind-qa`.
2. Confirm no hidden spec or implementation context is included.
3. Observe the product surface.
4. Infer the product and attempt plausible tasks.
5. Record findings, evidence, and confidence limits.

## Outputs And Artifacts

- `templates/blind-qa-report.md`

## Failure Cases

- If the tester already saw hidden context, run `hvn-test-briefed` instead.
- If the product cannot be launched, record the launch blocker.

## Related Commands And Skills

- Commands: `hvn-test-briefed`, `hvn-test-regression`
- Skills: `hvn-blind-qa`, `hvn-ios-sim-qa`, `hvn-web-qa`
