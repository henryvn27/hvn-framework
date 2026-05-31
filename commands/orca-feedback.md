# orca-feedback

## Purpose

Request, suppress, or shape a specific adaptive coaching response for the current task or future tasks.

## When To Use

Use when the user wants a better phrasing suggestion, a context-handoff hint, less coaching, or a direct explanation of why a nudge was offered.

## Required Inputs

- Current task or guidance preference

## Optional Inputs

- Rewrite target
- Coaching area
- Whether the guidance should be one-time or durable

## Workflow

1. Use `orca-feedback`.
2. Identify whether the user wants coaching, less coaching, or a rewrite example.
3. Keep the answer short and concrete.
4. Respect the tone and visibility rules from the adaptive guidance system.

## Outputs And Artifacts

- Lightweight coaching or suppression note
- Optional `templates/feedback-nudge.md`
- Optional `templates/try-this-next-time.md`

## Failure Cases

- If the nudge would be obvious, patronizing, or mistimed, suppress it.
- If the user wants execution only, do not turn the response into a lesson.

## Related Commands And Skills

- Commands: `orca-learning`, `orca-onboard`, `orca-next`
- Skills: `orca-adaptive-guidance`
