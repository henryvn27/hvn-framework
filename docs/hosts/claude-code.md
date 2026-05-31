# Claude Code Host Guide

This guide describes the conservative HVN integration model for Claude Code.

## Supported HVN Layers

- Portable `SKILL.md` skills
- Command prompt files
- Shared docs and templates
- File-based run memory
- Linear-first workflow when Linear or MCP access is configured
- Browser, simulator, and other QA workflows when the required tools are configured

## Install Locations

Recommended local project layout:

```text
.claude/
  skills/
  commands/
  hvn/
```

Recommended global layout:

```text
~/.claude/
  skills/
  commands/
  hvn/
```

Run:

```sh
./install/install.sh --host claude --mode local --yes
./install/verify-install.sh --target ./.claude/hvn --host claude --smoke
```

Use `--mode global` for `~/.claude/hvn`.

## Command Behavior

HVN command files can be installed under `.claude/commands/`. Actual invocation behavior depends on the Claude Code surface and configuration. The shared command prompt remains the source of truth even when invoked manually.

## Skill Discovery

Claude Code supports skills as directories containing `SKILL.md`. HVN installs portable skills under `.claude/skills/`.

## Question Flows

Question flows behave as focused command or chat rounds:

1. Start the command.
2. Ask one question or a compact batch.
3. Wait for the answer.
4. Update the artifact or run memory.
5. Stop when enough information exists.

Claude Code may expose command UI, but HVN does not claim control over native modal rendering.

## Run Memory

Use the shared file model:

```text
.hvn/memory/runs/<workstream-id>__<short-slug>.md
```

Claude session context is not a replacement for run memory.

## Linear-First Workflow

Use Linear directly when a connector or MCP server is configured. If Linear access is unavailable, prepare sync notes with:

- `templates/linear-memory-sync.md`
- `templates/linear-question-sync.md`

Do not claim an issue was updated unless the update was actually posted.

## QA Workflows

Claude Code can run HVN QA when the relevant tool is available:

- browser tooling for web QA
- simulator tooling for iOS QA
- shell or app launch tooling for local products

If tools are unavailable, record the limitation and prepare manual QA instructions.

## Caveats

- Command syntax and UI rendering may vary by Claude Code version.
- MCP servers and connectors must be configured separately.
- HVN skills should remain host-neutral; Claude-specific details belong in `adapters/claude/`.

## Uninstall

```sh
./install/uninstall.sh --target ./.claude/hvn --host claude --yes
```

## Troubleshooting

- If commands do not appear, verify `.claude/commands/hvn-help.md`.
- If skills do not appear, verify `.claude/skills/hvn-core/SKILL.md`.
- Reload Claude Code after local command or skill changes when needed.
