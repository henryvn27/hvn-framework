# Portable Skills

HVN skills are written as `SKILL.md` packages so they can be reused across multiple agent harnesses with minimal changes.

## Portability Goals

Portable skills should:

- describe reusable behavior, not one host's UI
- keep frontmatter small
- avoid host-specific tool names unless they are explicitly conditional
- reference shared templates and docs by relative path or clear repository path
- separate required workflow from optional integrations
- remain useful if loaded manually as Markdown

## Recommended Frontmatter

Use only broadly understood fields unless an adapter requires more:

```yaml
---
name: hvn-example
description: Short, specific trigger description.
---
```

Hosts may ignore unknown fields. Avoid relying on a frontmatter key unless the relevant adapter documents it.

## Host Differences

| Host | Portable skill behavior |
| --- | --- |
| Claude Code | Uses `.claude/skills/<name>/SKILL.md`; skills can be invoked directly or selected by description |
| Codex CLI | Uses Codex skills where enabled; `AGENTS.md` remains the persistent instruction baseline |
| OpenCode | Uses `.opencode/skills/`, `.claude/skills/`, or `.agents/skills/`; unknown frontmatter may be ignored |
| Hermes Agent | Uses Hermes skill directories; host-specific script tokens and orchestration features belong in adapters |

## Authoring Rules

- Write the skill body as host-neutral Markdown.
- Say "use the available shell tool" rather than naming one host's shell primitive.
- Say "post or prepare a Linear update" rather than assuming a connector exists.
- Say "ask the user" rather than assuming a modal or popup exists.
- Say "use configured browser tooling" rather than assuming Playwright, Browser, or Computer Use is present.
- Keep host-specific command names in `docs/command-mapping.md` or adapter docs.

## Tool References

Skills may mention optional tool categories:

- shell
- filesystem read/write
- patch editing
- browser automation
- simulator automation
- Linear connector
- MCP server
- subagent or worker delegation

When a tool is unavailable, the skill should define a manual or artifact-based fallback.

## Run Memory Rule

Skills should prefer file-based run memory over hidden host session memory:

```text
.hvn/memory/runs/<workstream-id>__<short-slug>.md
```

This keeps continuation inspectable across Claude, Codex, OpenCode, Hermes, and manual handoffs.

## Linear Rule

Skills should preserve Linear-first behavior without assuming direct Linear tools:

- use Linear when available
- include Linear IDs in summaries
- prepare sync notes when blocked
- avoid claiming issue updates that were not posted

## Interactive Question Rule

Skills should treat interactive question flows as prompt behavior:

- ask one question or a compact batch
- wait for answers
- store partial state
- resume without repeating answers

Do not claim a host-native popup, modal, or command palette unless the host provides it.

## Audit Checklist

Before adding or editing an HVN skill:

- Does the skill still work if read as plain Markdown?
- Are host-specific assumptions moved to adapters?
- Are optional integrations clearly optional?
- Does it preserve Linear-first fallback behavior?
- Does it preserve file-based run memory?
- Does it avoid hidden UI claims?
