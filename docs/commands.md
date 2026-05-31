# Commands

Commands are installable prompt definitions stored in `commands/`. Each command has a consistent shape:

- Purpose
- When to use
- Required inputs
- Optional inputs
- Linear context or opt-out equivalent
- Workflow
- Outputs and artifacts
- Failure cases
- Related commands and skills

## Linear Commands

- `hvn-route`
- `hvn-calibrate`
- `hvn-calibrate-design`
- `hvn-calibrate-writing`
- `hvn-memory`
- `hvn-memory-init`
- `hvn-memory-read`
- `hvn-memory-update`
- `hvn-question-flow`
- `hvn-blind-qa-brief`
- `hvn-spec-check`
- `hvn-delta`
- `hvn-style`
- `hvn-linear-health`
- `hvn-regression`
- `hvn-linear-check`
- `hvn-linear-setup`
- `hvn-linear-intake`
- `hvn-linear-sync`
- `hvn-linear-plan-comment`
- `hvn-linear-qa-report`
- `hvn-linear-ship-check`
- `hvn-full-output`

These commands read from and post back to Linear issues when Linear-first mode is active. In opt-out mode, they can be adapted to the chosen system of record.

The memory commands are lifecycle commands, not only Linear commands. They create, read, update, compress, and sync `.hvn/memory/runs/` artifacts for any non-trivial workstream.

Question-flow commands are interactive lifecycle commands. They ask focused rounds through the host's command interface and capture answers into reusable artifacts. HVN defines the prompt behavior; the host controls visible UI rendering.

## Core Commands

- `hvn-help`
- `hvn-onboard`
- `hvn-question-flow`
- `hvn-discover`
- `hvn-research`
- `hvn-spec`
- `hvn-spec-check`
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

## Command Triggering

Linear state, labels, comments, and agent delegation should trigger command selection. Example:

- `needs-spec` triggers `hvn-spec`.
- `Spec Ready` may trigger `hvn-spec-check` before planning.
- `Spec Ready` triggers `hvn-linear-plan-comment`.
- `Ready for Build` triggers `hvn-build` after approval.
- `In QA` plus `blind-qa` triggers `hvn-test-blind`.
- `needs-qa-brief` triggers `hvn-blind-qa-brief`.
- `Ready to Ship` triggers `hvn-linear-ship-check`.

## Cross-Harness Command Portability

Commands are shared logical workflows. Host adapters define where they are installed and how they are invoked:

- Claude Code: `.claude/commands/`
- Codex CLI: prompts, skills, or configured command surfaces
- OpenCode: `.opencode/command/`
- Hermes Agent: skills or orchestration prompts

See `docs/command-mapping.md`.
