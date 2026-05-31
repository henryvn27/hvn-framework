# Cross-Harness Architecture

HVN is a portable agent framework with a shared core and host-specific adapters. The framework should feel like one operating system for agentic software work, not four unrelated prompt packs.

## Architecture Summary

```text
hvn-framework
  core/       Shared architecture contract and portable asset manifest
  skills/     Portable SKILL.md capabilities
  commands/   Shared logical command prompts
  templates/  Portable output artifacts and comment formats
  docs/       Shared workflow, QA, memory, Linear, and host guidance
  adapters/   Host-specific install, command, config, and limitation notes
  install/    Shared and host-specific installers
```

The root `skills/`, `commands/`, `templates/`, `docs/`, and `profiles/` directories remain the shared source of truth. Host installers adapt them into each target environment.

## What Is Portable

Portable HVN assets:

- `SKILL.md` skill instructions
- command prompt bodies as logical workflows
- templates for specs, plans, QA, memory, Linear comments, and question flows
- Linear-first workflow rules
- run memory file model
- QA context rules
- profiles and defaults
- MCP example snippets as reference material

These assets should avoid host-specific claims unless the limitation is explicitly labeled.

## What Varies By Host

Host-specific items:

- command invocation syntax
- command discovery folders
- skill discovery folders
- config file names and precedence
- connector availability
- MCP server configuration format
- approval and sandbox semantics
- native UI affordances such as popups, palettes, or slash menus
- subagent and worker orchestration behavior

HVN adapters document these differences instead of hiding them.

## Shared Core Plus Adapters

The shared core defines the behavior. Adapters define host placement and invocation.

| Layer | Shared or host-specific | Examples |
| --- | --- | --- |
| Operating policy | Shared | `HVN.md`, `HVN.defaults.md` |
| Skills | Shared first | `skills/hvn-question-flow/SKILL.md` |
| Commands | Shared logical prompts, host-adapted invocation | `commands/hvn-onboard.md`, `.opencode/command/hvn-onboard.md` |
| Templates | Shared | `templates/spec.md`, `templates/run-memory.md` |
| Run memory | Shared file model | `.hvn/memory/runs/` |
| Connectors | Host-specific | Linear app, MCP, CLI auth |
| UI shell | Host-specific | slash commands, command palette, chat prompt |

## Skill Portability

HVN treats `SKILL.md` as the main shared capability layer because Claude Code, Codex, OpenCode, and Hermes-style systems can use Markdown skill packages or close equivalents. Not every host interprets every frontmatter field the same way. HVN skills therefore keep required metadata small and put host-specific instructions in adapter docs.

See `docs/portable-skills.md`.

## Command Adaptation

HVN commands are logical workflows. A host may expose them as:

- slash commands
- command palette commands
- Markdown command files
- prompts selected from a menu
- issue comments or delegation templates
- manual copy-paste prompts

Do not assume every host supports identical slash commands. See `docs/command-mapping.md`.

## Installation Model

The shared installer can still install HVN into `.hvn` or `~/.hvn`. Host-specific installers place shared assets into host-native locations when that mapping is known:

- Claude Code: `.claude/skills/`, `.claude/commands/`
- Codex CLI: `.codex/skills/` and guidance for `AGENTS.md` or `CODEX_HOME`
- OpenCode: `.opencode/skills/`, `.opencode/command/`
- Hermes Agent: `.hermes/skills/` or `~/.hermes/skills/`

When a host does not reliably auto-load a local path, the installer prints manual next steps instead of claiming full automation.

## Linear Across Hosts

Linear remains the default system of record. The portable minimum is:

- identify project or product
- create or reuse issue when possible
- record issue identifiers in summaries
- post or prepare sync comments
- keep blockers and state visible

If a host lacks a Linear connector, HVN records a pending sync using `templates/linear-memory-sync.md` or `templates/linear-question-sync.md`.

## Run Memory Across Hosts

File-based run memory is the lowest-common-denominator implementation:

```text
.hvn/memory/runs/<workstream-id>__<short-slug>.md
```

Hosts may have their own session memory, but HVN run memory must remain inspectable, versionable, and portable.

## QA Across Hosts

HVN QA behavior is shared. Tooling varies:

- browser automation may be native, MCP-provided, or manual
- iOS simulator workflows require host access to an appropriate simulator tool
- screenshots and logs are evidence only when actually captured
- blind QA context limits apply in every host

## Design Rule

Shared behavior belongs in the core. Host-specific claims belong in adapters. If support is uncertain, document the conservative fallback.
