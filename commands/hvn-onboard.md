# hvn-onboard

## Purpose

Run adaptive onboarding to understand a product, feature, or project before writing a spec.

## When To Use

Use at the start of a new project, significant feature, or unclear Linear issue.

## Required Inputs

- Initial user request, Linear issue description, or opt-out work item

## Optional Inputs

- Target users
- Business constraints
- Existing repo path
- Deadline or release target

## Linear Context

- Expects: issue title, description, comments, labels, state, project, and related issues
- Reads: ambiguity, user requests, constraints, previous agent questions
- Posts: intake summary, unresolved questions, recommended workflow, recommended labels and state
- Trigger: `Triage`, `needs-triage`, `needs-spec`, or delegated unclear issue
- Human approval: not required unless changing priority, owner, or project scope

## Opt-Out Context

Use the chosen work item or document as the source prompt and write the intake summary there.

## Workflow

1. Use `hvn-route` for non-trivial work.
2. Inspect Linear project and issue context or record blocked sync.
3. Run `hvn-linear-health` when the request comes from a Linear issue.
4. Initialize or update run memory with `hvn-memory`.
5. Use `hvn-onboard`.
6. Ask high-leverage questions one at a time or in small groups.
7. Stop when more questions would not materially improve the first spec.
8. Produce intake summary, unresolved questions, recommended workflow, and draft spec skeleton.
9. Sync the result to Linear or the opt-out record.

## Outputs And Artifacts

- `templates/intake.md`
- Draft `templates/spec.md` skeleton
- Linear intake comment when Linear-first mode is active

## Failure Cases

- If the user cannot answer, record assumptions and unresolved questions.
- If the project is already specified, skip to `hvn-spec`.

## Related Commands And Skills

- Commands: `hvn-linear-intake`, `hvn-spec`, `hvn-discover`
- Skills: `hvn-onboard`, `hvn-linear-triage`, `hvn-core`
