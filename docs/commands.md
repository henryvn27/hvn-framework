# Commands

Commands are installable prompt definitions stored in `commands/`. Each command has a consistent shape:

- Purpose
- When to use
- Required inputs
- Optional inputs
- Workflow
- Outputs and artifacts
- Failure cases
- Related commands and skills

## Command List

- `hvn-help`
- `hvn-onboard`
- `hvn-discover`
- `hvn-research`
- `hvn-spec`
- `hvn-plan`
- `hvn-build`
- `hvn-review`
- `hvn-design`
- `hvn-test-blind`
- `hvn-test-briefed`
- `hvn-test-regression`
- `hvn-security`
- `hvn-ship`
- `hvn-retro`

Installers copy these files into the chosen HVN target. Agent clients can map them to slash commands, prompt snippets, or command palettes.
