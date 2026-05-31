# Using HVN With Codex

Use this guide when Codex CLI is your main execution environment.

## When This Path Fits

- You want repo-local or user-global HVN installation for Codex
- You want AGENTS.md-compatible behavior with durable artifacts
- You want to route implementation, review, and QA work through the same workflow model

## How It Works

Codex is a host adapter, not a separate methodology.
The shared HVN workflow stays the same, but the installed prompts, command surfaces, and local conventions are adapted for Codex.

## Recommended Flow

1. Install with [../hosts/codex-cli.md](../hosts/codex-cli.md).
2. Read [../quickstart.md](../quickstart.md).
3. Use `hvn-help` to choose the next command.
4. For non-trivial work, create or reuse the durable work item before implementation.
5. Keep specs, plans, review notes, and QA artifacts linked from the work item or opt-out equivalent.

## Common Pitfalls

- Treating Codex chat history as the durable record
- Skipping `hvn-question-flow` when the request is still underspecified
- Letting implementation outrun the current spec

## Read Next

- [../hosts/codex-cli.md](../hosts/codex-cli.md)
- [../workflow.md](../workflow.md)
- [../run-memory.md](../run-memory.md)
- [../examples/codex-workflow.md](../examples/codex-workflow.md)
