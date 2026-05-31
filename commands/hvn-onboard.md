# hvn-onboard

## Purpose

Run adaptive onboarding to understand a product, feature, or project before writing a spec.

## When To Use

Use at the start of a new project, significant feature, or unclear request.

## Required Inputs

- Initial user request or product idea

## Optional Inputs

- Target users
- Business constraints
- Existing repo path
- Deadline or release target

## Workflow

1. Use `hvn-onboard`.
2. Ask high-leverage questions one at a time or in small groups.
3. Stop when more questions would not materially improve the first spec.
4. Produce intake summary, unresolved questions, recommended workflow, and draft spec skeleton.

## Outputs And Artifacts

- `templates/intake.md`
- Draft `templates/spec.md` skeleton

## Failure Cases

- If the user cannot answer, record assumptions and unresolved questions.
- If the project is already specified, skip to `hvn-spec`.

## Related Commands And Skills

- Commands: `hvn-spec`, `hvn-discover`
- Skills: `hvn-onboard`, `hvn-core`
