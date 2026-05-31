# hvn-build

## Purpose

Implement approved scope while preserving repo patterns and verification discipline.

## When To Use

Use after a plan exists or for a small change whose plan can be stated inline.

## Required Inputs

- Spec or explicit task
- Approved implementation plan or approved small-scope request

## Optional Inputs

- Linear issue ID or opt-out work item
- Test command
- Design constraints
- Related issue

## Linear Context

- Expects: issue ID, approved plan, state, labels, linked branch or PR conventions
- Reads: approved scope, non-goals, blockers, verification expectations
- Posts: progress updates, blockers, verification evidence, branch or PR links, review handoff
- Trigger: `Ready for Build`, `In Progress`, `agent-build`
- Human approval: required before starting if approval gate is missing

## Opt-Out Context

Record implementation updates and evidence in the chosen work item or build log.

## Workflow

1. Use `hvn-build`.
2. Confirm approval if required.
3. Read relevant files before editing.
4. Make scoped changes.
5. Run verification after meaningful phases.
6. Update the work item with evidence and remaining risks.

## Outputs And Artifacts

- Code or content changes
- Verification notes
- Updated plan when applicable
- Linear sync comments when active

## Failure Cases

- If unrelated dirty changes exist, preserve them.
- If tests fail, diagnose before claiming completion.
- If scope changes, return to planning and approval.

## Related Commands And Skills

- Commands: `hvn-linear-sync`, `hvn-review`, `hvn-test-blind`
- Skills: `hvn-build`, `hvn-linear-executor`
