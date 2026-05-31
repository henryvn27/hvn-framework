# hvn-linear-check

## Purpose

Check or prepare Linear project and issue context before non-trivial work.

## When To Use

Use before projects, features, bug fixes, research tasks, multi-step changes, review passes, QA passes, or release work.

## Required Inputs

- Repository, app, product, or client effort name
- Task summary

## Optional Inputs

- Existing Linear project ID
- Existing Linear issue ID
- Preferred team
- Labels or state

## Linear Context

- Expects: Linear connector access when available
- Reads: matching projects and issues
- Posts: setup or reuse note when useful
- Trigger: start of non-trivial work
- Human approval: required before creating broad workspace changes, not for normal issue comments unless team policy says otherwise

## Workflow

1. Search for a matching Linear project.
2. Reuse it if found.
3. Create or recommend a separate project if none exists.
4. Search for a matching issue.
5. Reuse or create an issue for the work.
6. Record project and issue identifiers.
7. If Linear is blocked, write exact manual sync instructions.

## Outputs And Artifacts

- Linear project ID or pending project creation instruction
- Linear issue ID or pending issue creation instruction
- Recommended labels and state

## Failure Cases

- If Linear auth is blocked, state the blocker and continue locally only when appropriate.
- If multiple matching projects exist, ask for selection or choose the repository/product-specific one.

## Related Commands And Skills

- Commands: `hvn-route`, `hvn-linear-sync`
- Skills: `hvn-linear-core`
