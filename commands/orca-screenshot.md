# orca-screenshot

## Purpose

Capture a browser, app, window, region, or desktop screenshot when visual evidence is needed.

## When To Use

Use when tool-specific capture is unavailable, when OS-level context matters, or when the user explicitly asks for screenshot evidence.

## Required Inputs

- target surface or reason for capture

## Optional Inputs

- explicit save path
- app or window target
- region
- whether the screenshot is for user delivery or internal inspection

## Workflow

1. Prefer tool-specific capture paths when they are higher fidelity.
2. Use OS-level capture when browser-only or tool-specific capture cannot see the needed surface.
3. Save to explicit user path when requested.
4. Otherwise save to temp for internal inspection or the OS default location for user-directed captures.
5. On macOS, run the permission preflight before app or window capture.
6. Record permission blockers and fallback options clearly.

## Outputs And Artifacts

- screenshot file
- capture note when relevant

## Failure Cases

- If OS permissions block capture, record the exact permission issue.
- If the platform lacks the needed capture toolchain, say so directly and recommend the next-best capture path.
- Prefer the bundled screenshot helpers in `skills/orca-screenshot/scripts/` over ad hoc shell snippets.

## Related Commands And Skills

- Commands: `orca-ui-debug`, `orca-test-blind`, `orca-test-briefed`
- Skills: `orca-web-qa`, `orca-ios-sim-qa`
