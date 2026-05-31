# Codex CLI Host Guide

This guide describes the conservative HVN integration model for Codex CLI and Codex-style environments.

## Supported HVN Layers

- Persistent project guidance through `AGENTS.md`
- Portable skills where Codex skills are enabled
- Shared command prompts as invocable workflows
- Shared docs and templates
- File-based run memory
- Linear-first workflow when connector, MCP, CLI, or manual issue access is available

## Install Locations

Recommended global layout:

```text
~/.codex/
  AGENTS.md
  skills/
  hvn/
```

Recommended project-local package layout:

```text
.codex/
  AGENTS.md
  skills/
  hvn/
```

Codex project behavior commonly relies on repository `AGENTS.md` files. A local `.codex/AGENTS.md` may require additional host configuration such as `CODEX_HOME` or manual inclusion. The installer prints this caveat rather than assuming automatic discovery.

Run:

```sh
./install/install-codex.sh --mode global
./install/verify-install.sh --target ~/.codex/hvn --host codex
```

## Command Behavior

Codex CLI can use HVN commands as prompt workflows. Do not assume every Codex surface provides the same slash-command semantics. The safe pattern is:

```sh
codex "Use HVN hvn-spec with the current repository context."
```

or invoke the matching skill where skills are available.

## Skill Discovery

Codex supports skill-style workflows in current environments, while `AGENTS.md` remains the baseline instruction mechanism. HVN installs skills under the selected Codex skill directory and also provides adapter guidance for `AGENTS.md`.

## Question Flows

Question flows run as conversational rounds. The agent asks one question or a compact batch and waits. Codex owns any visible command or chat UI.

## Run Memory

Use file-based run memory:

```text
.hvn/memory/runs/<workstream-id>__<short-slug>.md
```

Codex context compaction or session memory is helpful but not durable enough to replace this file.

## Linear-First Workflow

Use Linear tools when available. If unavailable:

- record the Linear project and issue that should exist
- create local artifacts
- prepare sync comments
- include pending sync in final handoffs

## QA Workflows

Codex can run QA when local tools, browser automation, simulator tools, or MCP servers are available. If not, HVN should produce a manual QA artifact and state the limitation.

## Caveats

- `AGENTS.md` discovery and skill discovery are distinct.
- Local `.codex/` installation may not be auto-loaded unless Codex is configured for it.
- Host-specific approval, sandbox, and network behavior are controlled by Codex, not HVN.
