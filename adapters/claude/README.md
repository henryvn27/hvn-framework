# Claude Code Adapter

This adapter maps the HVN shared core into Claude Code conventions.

## Install Shape

```text
.claude/
  commands/
  skills/
  hvn/
```

The host installer copies:

- shared commands to `.claude/commands/`
- shared skills to `.claude/skills/`
- full HVN reference package to `.claude/hvn/`

## Command Naming

Shared command file:

```text
commands/hvn-spec.md
```

Claude placement:

```text
.claude/commands/hvn-spec.md
```

Invocation depends on the Claude Code surface. Treat the file as the source prompt even when invoked manually.

## Skill Discovery

Claude Code uses skill directories with `SKILL.md`. HVN skills are copied unchanged.

## Workflow Shims

- Use `HVN.md` and `HVN.defaults.md` as top-level policy.
- Use run memory in `.hvn/memory/runs/`.
- Use Linear connector or MCP only when configured.
- Prepare sync notes when connector access is blocked.

## Limitations

- HVN does not control Claude's UI rendering.
- MCP servers and connectors are configured outside this adapter.
- Host approval and sandbox behavior remain Claude-owned.
