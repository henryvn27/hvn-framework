---
name: orca-screenshot
description: Capture OS-level or app-level screenshot evidence with sane fallback and save-path behavior.
---

# ORCA-HVN Screenshot

## What This Skill Is

A generic screenshot fallback workflow for browser, app, window, region, or desktop capture.

## Trigger

Use when visual evidence is needed and tool-specific capture is unavailable or insufficient.

## Do Not Trigger

Do not use when a higher-fidelity tool-specific screenshot path already exists and can see the target surface.

## Required Inputs

- capture target or evidence need

## Optional Inputs

- explicit save path
- app or window selector
- region
- internal-inspection vs user-deliverable intent

## Exact Workflow

1. Prefer the highest-fidelity capture surface available.
2. On macOS, run `scripts/ensure_macos_permissions.sh` before app or window capture to avoid repeated permission churn.
3. Fall back to OS-level capture only when needed.
4. Honor explicit save-path requests.
5. Otherwise use temp storage for internal inspection or default OS save locations for user-directed capture.
6. Use `scripts/take_screenshot.py` or `scripts/take_screenshot.ps1` instead of re-deriving platform capture commands.
7. Record permission blockers and platform limitations directly.

## Expected Outputs

- screenshot file
- capture note when relevant

## Quality Bar

The capture path should match the evidence need without pretending a browser-only shot is enough for desktop or system UI problems.

## Common Failure Modes

- using OS screenshots when tool-native capture would be clearer
- hiding platform permission blockers
- confusing internal-inspection temp files with user deliverables
- skipping the macOS permission preflight and then retrying blind

## Relationship To Other ORCA-HVN Skills And Commands

Pairs with `orca-web-qa`, `orca-ios-sim-qa`, and `orca-ui-debug`.
