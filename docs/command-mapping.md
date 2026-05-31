# Command Mapping

HVN commands are shared logical workflows. Each host decides how those workflows are invoked.

## Shared Logical Commands

The shared command set lives in `commands/` and includes:

- `hvn-help`
- `hvn-route`
- `hvn-question-flow`
- `hvn-onboard`
- `hvn-discover`
- `hvn-research`
- `hvn-spec`
- `hvn-plan`
- `hvn-build`
- `hvn-review`
- `hvn-design`
- `hvn-test-blind`
- `hvn-blind-qa-brief`
- `hvn-test-briefed`
- `hvn-test-regression`
- `hvn-security`
- `hvn-ship`
- `hvn-retro`
- Linear commands such as `hvn-linear-intake`, `hvn-linear-sync`, and `hvn-linear-ship-check`
- memory commands such as `hvn-memory-init`, `hvn-memory-read`, and `hvn-memory-update`

## Host Mapping

| Logical command | Claude Code | Codex CLI | OpenCode | Hermes Agent |
| --- | --- | --- | --- | --- |
| `hvn-help` | `.claude/commands/hvn-help.md` or skill prompt | prompt or skill-guided command | `.opencode/command/hvn-help.md` | skill or orchestration prompt |
| `hvn-question-flow` | command or skill-guided chat flow | conversational prompt with artifact capture | TUI command or chat flow | skill-guided flow |
| `hvn-onboard` | command file or skill | prompt plus `AGENTS.md` guidance | command file | skill or worker plan |
| `hvn-discover` | command file or skill | prompt or skill | command file, optionally subtask | skill or delegated worker |
| `hvn-spec` | command file or skill | prompt or skill | command file | skill |
| `hvn-build` | command file or skill | prompt or skill | command file or worker | delegated coding worker when appropriate |
| `hvn-test-blind` | command file or skill | prompt or skill with available tools | command file or worker | skill or delegated worker |
| Linear commands | connector or prepared sync | connector, MCP, or prepared sync | connector, MCP, CLI, or prepared sync | connector, MCP, or prepared sync |

## Invocation Examples

### Claude Code

```text
/hvn-onboard
```

or ask naturally for the matching skill:

```text
Use HVN onboarding for this issue.
```

### Codex CLI

```sh
codex "Use HVN hvn-spec on the current issue context and write the spec artifact."
```

Codex installations should also include AGENTS guidance so the shared behavior is available before a command is named.

### OpenCode

```text
/hvn-spec
```

when installed into `.opencode/command/`.

### Hermes Agent

```text
Use the HVN spec skill and preserve Linear-first sync notes.
```

Hermes may also orchestrate a coding worker, but HVN should not depend on Hermes-only orchestration.

## Partial Support

A command is partially supported when:

- the host can read the prompt but cannot auto-discover it
- required connector access is missing
- QA tooling is not configured
- the command requires manual copy-paste invocation

Partial support is acceptable if the adapter states the limitation and the shared artifact can still be produced.

## UI Boundary

Slash commands, command palettes, and popup-style flows differ by host. HVN commands define the prompt behavior and artifact outputs. They do not define native UI rendering.
