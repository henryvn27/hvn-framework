# hvn-discover

## Purpose

Inspect an existing codebase, product surface, or technical environment before planning work.

## When To Use

Use before changing an existing project or when constraints are unknown.

## Required Inputs

- Repository path, app URL, product surface, Linear issue, or opt-out work item

## Optional Inputs

- Known problem area
- Test commands
- Architecture notes

## Linear Context

- Expects: issue ID, target repo or surface, relevant links, labels, state, and comments
- Reads: requested scope, linked PRs, existing artifacts, platform labels
- Posts: discovery summary, risks, verification commands, recommended next state
- Trigger: `Ready for Spec`, `needs-discovery`, `needs-plan`, or unclear implementation surface
- Human approval: not required unless discovery changes issue scope

## Opt-Out Context

Write discovery notes to the selected artifact location and link or reference them from the work item.

## Workflow

1. Use `hvn-route` when the task is non-trivial.
2. Use `hvn-discover`.
3. Read run memory when it exists and the work is not blind QA.
4. Use `hvn-question-flow` only for missing high-leverage product, scope, launch, or repo questions before inspection.
5. Inspect structure, dependencies, scripts, tests, and relevant files.
6. Identify ownership boundaries and existing patterns.
7. Record stack, framework, design-system, and implementation conventions that should be preserved.
8. Record risks, constraints, and recommended next steps.
9. Update run memory with durable findings that affect future agents.
10. Sync findings to Linear or the opt-out record.

## Interactive Question Flow

- Uses interactive flow: conditional
- Default round size: one question before inspection; 2-3 questions only for independent facts such as repo path, platform, and launch target
- Collects: target surface, repo path, product area, known risk, launch or test command
- Stop condition: enough context exists to inspect the correct code or surface
- Final artifact: `templates/discovery-notes.md` plus optional `templates/question-round.md`

## Outputs And Artifacts

- `templates/discovery-notes.md`
- Run memory update when discovery changes scope, risk, or next steps
- Linear discovery comment when active

## Failure Cases

- If files or tools are inaccessible, record the access blocker.
- If the project is empty, recommend `hvn-onboard` or `hvn-spec`.

## Related Commands And Skills

- Commands: `hvn-question-flow`, `hvn-memory-read`, `hvn-memory-update`, `hvn-research`, `hvn-spec`, `hvn-plan`
- Skills: `hvn-question-flow`, `hvn-discover`, `hvn-run-memory`, `hvn-linear-core`
