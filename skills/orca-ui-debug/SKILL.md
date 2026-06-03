---
name: orca-ui-debug
description: Run persistent interactive UI debugging with clear reload vs relaunch rules and separate functional vs visual signoff.
---

# ORCA-HVN UI Debug

## What This Skill Is

A stateful UI debugging workflow for local web, mobile web, or Electron-like surfaces.

## Trigger

Use when one-shot QA is too weak and the interface needs iterative inspection across repeated changes.

## Do Not Trigger

Do not use for static review when screenshots or a briefed QA pass are enough.

## Required Inputs

- URL, launch command, or desktop app target

## Optional Inputs

- QA inventory
- Viewport list
- Functional checklist
- Visual checklist

## Exact Workflow

1. Build a QA inventory before final claims.
2. Start or identify the target runtime.
3. Choose the strongest available interactive surface.
   - prefer a persistent browser-driving or JS-session workflow when the harness supports it
   - otherwise use `orca-web-qa` plus repeated relaunch and screenshot evidence
4. Reload for renderer-only changes and relaunch for startup or process-boundary changes.
5. Keep functional validation separate from visual signoff.
6. Capture screenshot evidence and exact blockers.
7. When stateful inspection matters, preserve the debugging handle or session instead of treating every recheck as a fresh launch.

## Expected Outputs

- debugging notes
- screenshot evidence
- next-step recommendation

## Quality Bar

The result should make it clear what was actually rechecked, under what runtime state, and what remains uncertain.

## Common Failure Modes

- treating a reload like a relaunch
- mixing functional and visual signoff into one vague pass
- losing evidence across repeated iterations
- using one-pass QA when the real need is persistent stateful debugging

## Relationship To Other ORCA-HVN Skills And Commands

Pairs with `orca-web-qa`, `orca-context-brief`, and `orca-design`.
