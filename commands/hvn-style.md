# hvn-style

## Purpose

Create, select, or update an aesthetic profile for visual and writing taste.

## When To Use

Use before design-heavy work, writing-heavy work, redesigns, product launches, or any issue that should preserve taste across sessions.

## Required Inputs

- Product or issue context
- Desired profile or style goal

## Optional Inputs

- Existing brand guidance
- Screenshots
- Active profile
- Writing samples

## Linear Context

- Reads: project style notes, linked profiles, issue labels, design constraints
- Posts: selected profile, profile changes, or profile creation recommendation
- Trigger: design calibration, writing calibration, new product, redesign
- Human approval: required before changing a shared product profile

## Workflow

1. Read active profile if one exists.
2. Select the closest shipped profile or create a project-specific profile.
3. Record visual tone, layout, typography, motion, writing tone, anti-patterns, and trust cues.
4. Feed the profile into authenticity preflight.
5. Link or post the profile.

## Outputs And Artifacts

- `templates/aesthetic-profile.md`
- Profile selection note

## Failure Cases

- If profiles conflict, choose one primary profile and list borrowed constraints.
- If the user asks for a redesign, do not silently preserve the old profile.

## Related Commands And Skills

- Commands: `hvn-calibrate`, `hvn-design`
- Skills: `hvn-aesthetic-profile`, `hvn-authenticity-preflight`
