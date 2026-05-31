# Codex CLI Adapter

This adapter maps the HVN shared core into Codex CLI conventions.

## Install Shape

```text
.codex/
  AGENTS.md
  skills/
  hvn/
```

For global installs, use:

```text
~/.codex/
  AGENTS.md
  skills/
  hvn/
```

## Command Naming

Codex support for slash-command-like prompts can vary by surface. HVN keeps shared commands under `hvn/commands/` and relies on natural invocation or skill invocation when command discovery is not available.

Example:

```sh
codex "Use HVN hvn-plan for the current issue and produce the plan artifact."
```

## Skill Discovery

HVN copies skills into the selected Codex skill directory when present. `AGENTS.md` remains the conservative baseline for persistent guidance.

## Workflow Shims

- Install `adapters/codex/AGENTS.md` as Codex guidance.
- Keep shared assets under `hvn/`.
- Use file-based run memory.
- Prepare Linear sync notes when Codex lacks Linear access.

## Limitations

- A project-local `.codex/AGENTS.md` may require host configuration or manual inclusion.
- Do not assume a Codex surface supports the same slash command behavior as Claude or OpenCode.
- Codex sandbox, approval, and connector behavior are host-controlled.
