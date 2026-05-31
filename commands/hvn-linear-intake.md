# hvn-linear-intake

## Purpose

Turn a raw Linear issue into an HVN-ready unit of work.

## When To Use

Use when an issue enters triage, lacks scope, or needs routing before spec.

## Required Inputs

- Linear issue ID
- Issue title and description
- Current state and labels

## Optional Inputs

- Project context
- Related issues
- Customer or stakeholder notes

## Linear Context

- Reads: issue title, description, labels, state, comments, links, project, assignee, delegate
- Posts: intake summary, missing questions, recommended labels, recommended next state
- Trigger: `Triage`, `needs-triage`, `needs-spec`
- Human approval: not required unless changing priority, project, or ownership

## Workflow

1. Read the issue and project context.
2. Identify missing user, job, scope, platform, risk, and acceptance context.
3. Use `hvn-question-flow` in Linear intake mode.
4. Ask only questions that change the next useful spec, plan, or routing decision.
5. Record waiting-on-answer state when the user or stakeholder has not responded.
6. Turn answers into issue updates, comments, specs, or planning artifacts.
7. Recommend state, labels, and next HVN command.

## Interactive Question Flow

- Uses interactive flow: yes
- Default round size: one question in issue comments; 2-3 questions only for independent issue fields
- Collects: user, job, scope, platform, risk, acceptance context, owner, next gate
- Stop condition: issue is healthy enough for spec, discovery, or planning
- Final artifact: Linear intake comment and optional `templates/linear-question-sync.md`

## Outputs And Artifacts

- Linear intake comment
- Optional `templates/intake.md` artifact
- `templates/linear-question-sync.md` when answers or pending questions must be synced
- `templates/question-round.md` for resumable intake

## Failure Cases

- If the issue is not accessible, request issue access.
- If scope spans multiple products, recommend splitting issues.

## Related Commands And Skills

- Commands: `hvn-question-flow`, `hvn-onboard`, `hvn-spec`, `hvn-linear-sync`
- Skills: `hvn-question-flow`, `hvn-linear-core`, `hvn-linear-triage`, `hvn-onboard`
