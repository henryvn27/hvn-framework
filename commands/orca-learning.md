# orca-learning

## Purpose

Inspect or adjust ORCA-HVN's adaptive learning-help mode.

## When To Use

Use when the user wants more help, less help, help only on request, or no coaching.

## Required Inputs

- Desired learning-help mode or inspection question

## Optional Inputs

- Specific workflow area to tune
- Reason for the preference

## Workflow

1. Use `orca-learning`.
2. Determine whether the user wants full help, light help, on-request help, or off.
3. Confirm the mode change briefly.
4. Respect the preference without debate.

## Outputs And Artifacts

- Updated learning-help preference
- Optional `templates/user-skill-profile.md` note when a durable preference is clear

## Failure Cases

- If the user's intent is unclear, choose the least intrusive interpretation.
- Do not guilt the user for opting out.

## Related Commands And Skills

- Commands: `orca-feedback`, `orca-next`, `orca-onboard`
- Skills: `orca-adaptive-guidance`
