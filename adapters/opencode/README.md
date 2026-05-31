# OpenCode Adapter

This adapter maps the HVN shared core into OpenCode conventions.

## Install Shape

```text
.opencode/
  command/
  skills/
  hvn/
```

The adapter uses `command/` because OpenCode documents local command files under `.opencode/command/`.

## Command Naming

Shared command file:

```text
commands/hvn-build.md
```

OpenCode placement:

```text
.opencode/command/hvn-build.md
```

## Skill Discovery

OpenCode supports `SKILL.md`-style skill discovery. HVN installs directly to `.opencode/skills/`.

## Workflow Shims

- Use OpenCode as either the primary host or a coding worker.
- Pass HVN specs, plans, and run memory explicitly to workers.
- Record worker outputs back into shared artifacts.
- Use Linear connector, MCP, CLI, or pending sync notes depending on local configuration.

## Limitations

- Do not assume OpenCode commands behave exactly like Claude commands.
- Do not assume Linear or browser access unless configured.
- Worker execution is an adapter concern, not a shared-core requirement.
