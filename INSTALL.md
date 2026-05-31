# Installation

HVN supports Linear-first usage, opt-out usage, local install, and global install.

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

Repo mode is useful for contributors and teams that commit agent operating procedures into a product repository.

## Local Install

Local install copies HVN into a target folder inside one project:

```sh
./install/install.sh --mode local --target ./.hvn
```

The target will contain:

- `HVN.md`
- `commands/`
- `skills/`
- `templates/`
- `docs/`
- `mcp/`

Verify it:

```sh
./install/verify-install.sh --target ./.hvn
```

## Global Install

Global install copies HVN into the user config folder:

```sh
./install/install.sh --mode global
```

Default targets:

- Unix: `$HOME/.hvn`
- PowerShell: `$HOME/.hvn`

Override the target with `--target /path/to/hvn`.

## Linear Configuration

HVN does not automate Linear OAuth. Configure Linear through your agent client or MCP setup. A placeholder-safe example lives at `mcp/linear.example.json`; store credentials in your agent client's secret store rather than committing them.

Recommended setup:

1. Connect Linear to the agent client.
2. Confirm the agent can read projects, issues, states, comments, and labels.
3. Confirm the agent can post comments.
4. Decide whether agents may change issue states directly or only recommend transitions.
5. Paste guidance from `docs/linear-guidance.md` into workspace, team, or project instructions.

## MCP Setup Overview

HVN includes example MCP snippets:

- `mcp/linear.example.json`
- `mcp/ios-simulator.example.json`
- `mcp/browser.example.json`

Adapt command names and paths to your agent client and installed MCP servers.

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
