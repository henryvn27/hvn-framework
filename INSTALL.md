# Installation

HVN supports Linear-first usage, opt-out usage, local install, global install, and host-specific installs for Claude Code, Codex CLI, OpenCode, and Hermes Agent.

## Coordination Setup

HVN defaults to Linear as the system of record. For Linear-first work, configure your agent client with Linear access, then use Linear issues as the starting point for HVN commands.

Expected Linear integration points:

- Read issue title, description, labels, state, comments, links, project, assignee, and delegate.
- Post specs, plans, QA reports, review findings, ship checks, and handoffs as comments.
- Link durable artifacts such as PRs, screenshots, build logs, release notes, and docs.
- Recommend state transitions only when required evidence exists.

If the user opts out of Linear, choose another durable system of record before work starts. Use the same HVN gates and store artifacts in GitHub Issues, PR comments, project docs, local files, or another tracker.

## Repo Mode

Use repo mode when you want to inspect or vendor the framework manually. Reference these paths directly:

- `HVN.md`
- `commands/`
- `skills/`
- `templates/`
- `docs/`
- `mcp/`
- `core/`
- `adapters/`

Repo mode is useful for contributors and teams that commit agent operating procedures into a product repository.

## Local Install

Local install copies HVN into a target folder inside one project:

```sh
./install/install.sh --mode local --target ./.hvn
```

The target will contain:

- `HVN.md`
- `HVN.defaults.md`
- `commands/`
- `skills/`
- `templates/`
- `docs/`
- `mcp/`
- `profiles/`
- `memory/runs/archive/`

Verify it:

```sh
./install/verify-install.sh --target ./.hvn
```

Use `.hvn/memory/runs/<workstream-id>__<short-slug>.md` for local run memory when the workstream needs a continuation record.

## Global Install

Global install copies HVN into the user config folder:

```sh
./install/install.sh --mode global
```

Default targets:

- Unix: `$HOME/.hvn`
- PowerShell: `$HOME/.hvn`

Override the target with `--target /path/to/hvn`.

## Host Detection

Run:

```sh
./install/detect-host.sh
```

Detection prints hints only. Use an explicit installer when more than one host is present.

## Host-Specific Installs

Claude Code:

```sh
./install/install-claude.sh --mode local
./install/verify-install.sh --target ./.claude/hvn --host claude
```

Codex CLI:

```sh
./install/install-codex.sh --mode global
./install/verify-install.sh --target ~/.codex/hvn --host codex
```

OpenCode:

```sh
./install/install-opencode.sh --mode local
./install/verify-install.sh --target ./.opencode/hvn --host opencode
```

Hermes Agent:

```sh
./install/install-hermes.sh --mode local
./install/verify-install.sh --target ./.hermes/hvn --host hermes
```

Host installers install the shared HVN package under a host-specific `hvn/` directory and copy skills or command files into the host's expected locations when that mapping is known. If a host requires manual configuration, the script prints that limitation.

## Linear Configuration

HVN does not automate Linear OAuth. Configure Linear through your agent client or MCP setup. A placeholder-safe example lives at `mcp/linear.example.json`; store credentials in your agent client's secret store rather than committing them.

Use the setup guide first:

```sh
./scripts/linear-setup.sh --mode linear-first --target work/hvn-linear-setup.md
```

Then follow `docs/linear-setup.md`.

Recommended setup:

1. Connect Linear to the agent client.
2. Confirm the agent can read projects, issues, states, comments, and labels.
3. Confirm the agent can post comments.
4. Decide whether agents may change issue states directly or only recommend transitions.
5. Configure or map states from `docs/linear-states.md`.
6. Configure labels from `docs/linear-setup.md`.
7. Paste guidance from `docs/linear-guidance.md` into workspace, team, or project instructions.
8. Create and run the smoke-test issue described in `docs/linear-setup.md`.

## MCP Setup Overview

HVN includes example MCP snippets:

- `mcp/linear.example.json`
- `mcp/ios-simulator.example.json`
- `mcp/browser.example.json`

Adapt command names and paths to your agent client and installed MCP servers.

## Enabling The Henry Profile

The Henry profile is installed at `profiles/henry-van-ness.md`. To use it, include `HVN.md`, `HVN.defaults.md`, and `profiles/henry-van-ness.md` in your agent instructions or project memory. The profile enables Linear-first work management, most-specific skill routing, preserve-stack behavior, premium design sensitivity, and full-output enforcement when requested.

To use a different profile later, create another file in `profiles/` and state which profile the agent should load.

## Cross-Harness Architecture

The shared core lives in root-level `skills/`, `commands/`, `templates/`, `docs/`, `profiles/`, and `mcp/`, with `core/README.md` documenting the boundary. Host-specific placement and limitations live in `adapters/`.

Read:

- `docs/cross-harness-architecture.md`
- `docs/compatibility-matrix.md`
- `docs/command-mapping.md`
- `docs/portable-skills.md`
- `docs/hosts/claude-code.md`
- `docs/hosts/codex-cli.md`
- `docs/hosts/opencode.md`
- `docs/hosts/hermes-agent.md`

## Run Memory Artifacts

Installed HVN creates `.hvn/memory/runs/archive/` for local continuation records. Run memory docs live in `docs/run-memory.md`, Linear sync guidance in `docs/run-memory-linear.md`, handoff guidance in `docs/run-memory-handoffs.md`, and maintenance guidance in `docs/run-memory-maintenance.md`.

## Interactive Question Flows

Installed HVN includes guided question-flow commands and templates. Use `commands/hvn-question-flow.md`, `commands/hvn-onboard.md`, `commands/hvn-spec.md`, `commands/hvn-linear-intake.md`, and `commands/hvn-blind-qa-brief.md` for focused command-driven clarification. The framework defines prompt behavior and artifacts; the host app provides the visible slash-command, popup, command-palette, or chat shell.

## Interview And Spec Workflow

Installed HVN includes interview-first onboarding and spec-driven execution artifacts:

- `docs/onboarding.md`
- `docs/spec-driven-workflow.md`
- `docs/spec-quality-bar.md`
- `docs/scope-discipline.md`
- `docs/milestone-planning.md`
- `commands/hvn-spec-check.md`
- `templates/spec.md`
- `templates/spec-review.md`
- `templates/requirements-split.md`
- `templates/milestone-plan.md`

## Feature Artifacts

Installed HVN includes run memory, blind-to-briefed deltas, aesthetic profiles, issue health checks, and regression packs. Their templates live in `templates/`, skills in `skills/`, commands in `commands/`, and docs in `docs/`.

## Uninstall

Uninstall removes only a target that looks like an HVN install:

```sh
./install/uninstall.sh --target ./.hvn
```

The script refuses to remove arbitrary folders.

## Doctor

Run:

```sh
./install/doctor.sh
```

Doctor checks shell dependencies, expected framework folders, script permissions, and common install targets.
