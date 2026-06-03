# orca-learning

## Purpose

Inspect or adjust ORCA Framework's adaptive learning-help mode.

## When To Use

Use when the user wants more help, less help, help only on request, no coaching, or a different involvement/check-in style.

## Required Inputs

- Desired learning-help mode, involvement preference, or inspection question

## Optional Inputs

- Specific workflow area to tune
- Reason for the preference

## Workflow

1. Use `orca-learning`.
2. Determine whether the user wants full help, light help, on-request help, or off.
3. Also determine whether the user wants more check-ins, fewer check-ins, or different handling for goal/background execution.
4. Confirm the mode change briefly.
5. Respect the preference without debate.

## Outputs And Artifacts

- Updated learning-help preference
- Updated involvement or checkpoint preference when requested
- Optional `templates/user-skill-profile.md` note when a durable preference is clear

## Failure Cases

- If the user's intent is unclear, choose the least intrusive interpretation.
- Do not guilt the user for opting out.

## Related Commands And Skills

- Commands: `orca-feedback`, `orca-next`, `orca-onboard`
- Skills: `orca-adaptive-guidance`
