# OpenCode Host Guide

This guide describes the conservative HVN integration model for OpenCode.

## Supported HVN Layers

- Portable `SKILL.md` skills
- Command Markdown files
- Shared docs and templates
- File-based run memory
- Linear-first workflow when tools, MCP, CLI, or manual access are configured
- QA workflows through configured tools or workers

## Install Locations

Recommended project layout:

```text
.opencode/
  skills/
  command/
  hvn/
```

Recommended user layout:

```text
~/.config/opencode/
  skills/
  command/
  hvn/
```

Run:

```sh
./install/install-opencode.sh --mode local
./install/verify-install.sh --target ./.opencode/hvn --host opencode
```

## Command Behavior

OpenCode documents command files under `.opencode/command/`. HVN installs logical command prompts there. Actual TUI command behavior remains OpenCode-owned.

## Skill Discovery

OpenCode supports `SKILL.md` discovery in skill directories. It can also read compatible skill directories such as `.claude/skills/` and `.agents/skills/` in documented configurations. HVN installs directly into `.opencode/skills/` for clarity.

## Question Flows

Question flows can run through OpenCode commands or normal chat interaction. The framework defines the progressive prompt behavior; OpenCode defines the visible interface.

## Run Memory

Use:

```text
.hvn/memory/runs/<workstream-id>__<short-slug>.md
```

If OpenCode workers are used, pass the relevant run memory explicitly.

## Linear-First Workflow

Use Linear when the host has a configured connector, MCP server, CLI, or manual issue access. Otherwise create local sync notes and include Linear IDs in summaries.

## QA Workflows

OpenCode can act as a coding worker or primary host. QA support depends on available tools:

- browser automation for web QA
- simulator tooling for iOS QA
- shell commands for local verification
- manual artifacts when tools are unavailable

## Caveats

- Do not assume OpenCode command behavior matches Claude or Codex slash commands.
- Do not assume OpenCode has Linear access unless configured.
- Worker delegation should preserve HVN artifacts and run memory.
