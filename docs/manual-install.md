# Manual Install

Manual install is the fallback when scripts cannot run or a host uses custom paths.

## Shared Package

Create a target directory and copy:

```text
HVN.md
HVN.defaults.md
commands/
skills/
templates/
docs/
mcp/
profiles/
core/
adapters/
```

Create run memory directories:

```text
memory/runs/archive/
```

Write marker files:

```text
VERSION
HOST
```

## Claude Code

Copy skills:

```text
skills/* -> .claude/skills/
```

Copy commands:

```text
commands/hvn-*.md -> .claude/commands/
```

Keep the shared package at:

```text
.claude/hvn/
```

Verify:

```sh
./install/verify-install.sh --target ./.claude/hvn --host claude
```

## Codex CLI

Copy skills:

```text
skills/* -> .codex/skills/
```

Copy adapter guidance:

```text
adapters/codex/AGENTS.md -> .codex/AGENTS.md
```

Keep the shared package at:

```text
.codex/hvn/
```

Codex may require additional configuration before local `.codex/AGENTS.md` is loaded.

## OpenCode

Copy skills:

```text
skills/* -> .opencode/skills/
```

Copy commands:

```text
commands/hvn-*.md -> .opencode/command/
```

Keep the shared package at:

```text
.opencode/hvn/
```

## Hermes Agent

Copy skills:

```text
skills/* -> .hermes/skills/
```

Keep the shared package at:

```text
.hermes/hvn/
```

Map commands from `.hermes/hvn/commands/` according to local Hermes configuration.

## Remove Manually

Remove only HVN-managed files:

- shared `hvn/` or `.hvn/` target
- `hvn-*` command files copied by HVN
- `hvn-*` skill directories copied by HVN

Back up `memory/runs/` first if it contains useful work state.
