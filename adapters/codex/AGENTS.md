# HVN Codex Adapter Guidance

Use HVN as the operating framework for non-trivial software work.

## Core Policy

- Load `hvn/HVN.md` and `hvn/HVN.defaults.md` when available.
- Use the most specific HVN skill in `skills/` or `hvn/skills/`.
- Use `hvn/commands/` as logical command prompts.
- Preserve Linear-first behavior for non-trivial work.
- If Linear is blocked, create local artifacts and record exact sync notes.
- Use `.hvn/memory/runs/` for run memory.
- Keep blind QA free of hidden spec, plan, implementation, and memory context.

## Command Invocation

When the user names an HVN command, follow the matching file under `hvn/commands/`. If the host does not expose slash commands, treat the command name as a workflow selector.

## Host Boundary

Do not claim Codex opened a modal, popup, command palette, connector, browser, simulator, or Linear issue unless that actually happened in the current environment.
