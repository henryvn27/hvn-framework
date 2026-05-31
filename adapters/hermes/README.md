# Hermes Agent Adapter

This adapter maps the HVN shared core into Hermes Agent conventions.

## Install Shape

```text
.hermes/
  skills/
  hvn/
```

Commands remain in `hvn/commands/` unless a local Hermes installation provides a native command directory.

## Skill Discovery

Hermes can use `SKILL.md`-compatible skills. HVN installs portable skills under `.hermes/skills/` or `~/.hermes/skills/`.

## Orchestration Model

Hermes can orchestrate broader workflows and may delegate work to other coding agents or OpenCode-style workers when configured. HVN keeps this optional:

- shared specs and plans remain in `templates/` formats
- run memory remains file-based
- worker context is bounded
- QA and review outputs are merged back into shared artifacts

## Command Naming

Use shared command names as workflow labels:

```text
hvn-onboard
hvn-spec
hvn-build
hvn-test-blind
```

If Hermes provides native command registration, map these labels to files in `hvn/commands/`.

## Limitations

- Do not assume every Hermes setup includes OpenCode workers.
- Do not assume native slash commands or modals.
- Direct Linear, MCP, browser, and simulator access are configuration-dependent.
