# Compatibility Matrix

This matrix describes HVN support across Claude Code, Codex CLI, OpenCode, and Hermes Agent. It is intentionally conservative: supported means the repo provides a documented path and avoids assuming host features that may not exist.

## Summary Matrix

| Capability | Claude Code | Codex CLI | OpenCode | Hermes Agent |
| --- | --- | --- | --- | --- |
| Shared `SKILL.md` skills | Supported through `.claude/skills/` | Supported through Codex skills where enabled; AGENTS.md remains the baseline instruction path | Supported through `.opencode/skills/`, `.claude/skills/`, or `.agents/skills/` | Supported through Hermes skill directories |
| Shared commands | Supported through `.claude/commands/` or skill invocation | Supported as prompt files or manual command prompts; exact slash behavior depends on Codex surface | Supported through `.opencode/command/` or config `command` entries | Supported as skill-backed prompts or manual orchestration prompts |
| Interactive question flows | Supported as command or chat rounds; host owns UI | Supported as conversational rounds; host owns UI | Supported through TUI commands or chat rounds; host owns UI | Supported through skill or orchestration flow; host owns UI |
| Linear-first workflow | Supported when Linear connector or MCP is configured; otherwise pending sync | Supported when connector, MCP, or manual issue access is available; otherwise pending sync | Supported when connector, MCP, CLI, or manual issue access is available; otherwise pending sync | Supported when tool or connector access is configured; otherwise pending sync |
| MCP assumptions | Claude MCP support is host-configured | Codex MCP support is host-configured | OpenCode has MCP configuration support | Hermes tool and MCP support is host-configured |
| Run memory | File-based `.hvn/memory/runs/` | File-based `.hvn/memory/runs/` | File-based `.hvn/memory/runs/` | File-based `.hvn/memory/runs/` |
| Blind QA | Supported when the host can launch or inspect the target; otherwise manual | Supported when CLI/tools can launch or inspect the target; otherwise manual | Supported when OpenCode worker/tools can inspect the target; otherwise manual | Supported when Hermes tools or delegated workers can inspect the target; otherwise manual |
| iOS simulator QA | Requires configured simulator tooling | Requires configured simulator tooling | Requires configured simulator tooling or delegated worker | Requires configured simulator tooling or delegated worker |
| Web QA | Requires browser automation, MCP, or manual browser access | Requires browser automation, MCP, or manual browser access | Requires browser tooling or manual browser access | Requires browser tooling, worker, or manual browser access |
| Host-native UI assumptions | Slash commands and skills are documented, but HVN does not control UI | Do not assume identical slash commands across Codex surfaces | TUI commands are documented, but HVN does not control UI | Do not assume modal UI; use skills or orchestration |
| Install method | `install/install-claude.sh` | `install/install-codex.sh` | `install/install-opencode.sh` | `install/install-hermes.sh` |

## Capability Notes

### Skills

Skills are the most portable HVN layer. Claude Code documents `SKILL.md` directories under `.claude/skills/`. OpenCode documents `SKILL.md` discovery under `.opencode/skills/`, `.claude/skills/`, and `.agents/skills/`. Codex documents skills and also uses `AGENTS.md` for persistent project guidance. Hermes documents skills as installable Markdown capabilities.

HVN skills should use portable frontmatter and avoid relying on host-only fields.

### Commands

Commands are less portable than skills. HVN keeps a shared logical command set in `commands/`, then adapters describe native invocation:

- Claude: command files or skill invocation
- Codex: prompt invocation, skills, or AGENTS-guided workflows depending on surface
- OpenCode: `.opencode/command/` Markdown files or config entries
- Hermes: skills or orchestration prompts

### Interactive Question Flows

Question flows are behavior, not UI. HVN can ask focused rounds in any host that supports conversational interaction. Host-native popup or palette rendering is not assumed.

### Linear

Linear-first means HVN tries to use Linear as the system of record. It does not mean every host has direct Linear API access. If Linear is unavailable, HVN records the exact sync that should be posted later.

### MCP And External Tools

MCP availability depends on host configuration. HVN includes example MCP snippets, but installing HVN does not install or authenticate MCP servers.

### Run Memory

Run memory is portable because it is file-based and inspectable. A host's hidden session memory may help locally, but it is not the HVN system of record.

### QA

The QA model is portable. Tool execution is host-specific. If a host cannot launch a browser, simulator, or app, HVN records the limitation instead of pretending the pass ran.

## Conservative Defaults

When support is unclear:

1. Use `SKILL.md` instructions as the primary shared layer.
2. Use `.hvn/memory/runs/` for continuation.
3. Use local artifacts for specs, plans, QA, and Linear sync notes.
4. Ask the user to configure host-specific connectors or tools.
5. Avoid claims about native UI, hooks, popups, or connector access.
