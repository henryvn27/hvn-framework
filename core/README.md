# HVN Shared Core

The HVN shared core is the host-neutral part of the framework. It defines the operating model that should remain stable across Claude Code, Codex CLI, OpenCode, Hermes Agent, and future agent harnesses.

## Shared Assets

The shared core is made of:

- `HVN.md`
- `HVN.defaults.md`
- `skills/`
- `commands/`
- `templates/`
- `profiles/`
- `docs/`
- `mcp/`

These directories remain at the repository root for backward compatibility with existing installs. The `core/` directory documents their role and keeps the architecture explicit without forcing a disruptive file move.

## Portable Behavior

The core defines:

- Linear-first work management
- opt-out system-of-record behavior
- most-specific skill routing
- interactive question flows
- run memory
- spec, plan, build, review, QA, ship, and retrospective gates
- blind-to-briefed QA separation
- regression packs
- authenticity preflight
- installable templates and comments

## Host Adapter Boundary

Host adapters live in `adapters/`. They explain how the shared core maps into each harness:

- install paths
- command invocation style
- skill discovery behavior
- config and instruction files
- connector and MCP assumptions
- limitations

Adapters should not fork the HVN operating model unless the host requires it.

## Lowest-Common-Denominator Guarantees

HVN remains usable when a host has no special connector support if the agent can:

- read Markdown instructions
- use `SKILL.md` files or equivalent prompt instructions
- read and write local files
- preserve run memory in `.hvn/memory/runs/`
- link or summarize external system-of-record updates

Host-specific capabilities can improve the workflow, but they are not the core.
