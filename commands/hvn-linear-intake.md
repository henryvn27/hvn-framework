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
3. Ask only questions that change the next useful spec.
4. Recommend state, labels, and next HVN command.

## Outputs And Artifacts

- Linear intake comment
- Optional `templates/intake.md` artifact

## Failure Cases

- If the issue is not accessible, request issue access.
- If scope spans multiple products, recommend splitting issues.

## Related Commands And Skills

- Commands: `hvn-onboard`, `hvn-spec`, `hvn-linear-sync`
- Skills: `hvn-linear-core`, `hvn-linear-triage`, `hvn-onboard`
