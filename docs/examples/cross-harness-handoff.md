# Cross-Harness Handoff Example

## Scenario

A planner starts in Claude Code, implementation happens in OpenCode, and final review happens in Codex CLI.

## Shared Artifacts

```text
.hvn/memory/runs/APP-44__invoice-export.md
templates/spec.md
templates/plan.md
templates/review-report.md
templates/blind-qa-report.md
templates/linear-memory-sync.md
```

## Handoff

### Claude Code Planner

- Runs `hvn-question-flow`.
- Produces onboarding intake and spec.
- Initializes run memory.
- Records Linear issue `APP-44`.

### OpenCode Builder

- Reads run memory, spec, and plan.
- Implements approved scope.
- Updates run memory with changed files, verification, and failed attempts.

### Codex Reviewer

- Reads run memory, diff, spec, and verification.
- Runs `hvn-review`.
- Produces findings and regression candidates.
- Prepares Linear sync if direct access is blocked.

## Why This Works

The hosts differ, but the shared HVN artifacts stay stable:

- skills are portable Markdown
- commands are logical workflows
- run memory is file-based
- Linear sync is explicit
- QA context rules do not depend on host UI
