# Runtime Adaptation Guide

Use this guide when you need one HVN workflow to travel across different host runtimes.

## What Runtime Adaptation Means

HVN keeps one operating model and adapts installation, command surfacing, and host capabilities around it.
The shared core should not fork just because the host changes.

## What Stays Shared

- lifecycle stages
- specs, plans, run memory, and QA artifacts
- most commands and skills
- contributor expectations

## What Changes By Host

- where commands are installed
- which connectors or MCP tools are available
- how native UI exposes prompts or commands
- how global versus local install behaves

## Read Next

- [../cross-harness-architecture.md](../cross-harness-architecture.md)
- [../compatibility-matrix.md](../compatibility-matrix.md)
- [../hosts/claude-code.md](../hosts/claude-code.md)
- [../hosts/codex-cli.md](../hosts/codex-cli.md)
- [../hosts/opencode.md](../hosts/opencode.md)
- [../hosts/hermes-agent.md](../hosts/hermes-agent.md)
