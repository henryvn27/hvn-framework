# Installation

HVN supports three usage patterns: repo mode, local install, and global install.

## Repo Mode

Use repo mode when you want to inspect or vendor the framework manually. Reference these paths directly:

- `HVN.md`
- `commands/`
- `skills/`
- `templates/`
- `docs/`

Repo mode is useful for teams that commit their agent operating procedures into each product repository.

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

## MCP Setup Overview

HVN does not install MCP servers for you. It provides example configuration snippets in `mcp/` for iOS simulator and browser QA workflows. Copy the relevant snippet into your agent client's MCP configuration and adapt command paths to your machine.
