# Installation

HVN installation is designed to be boring in the best way: explicit, safe, verifiable, and reversible.

## Shortest Path

From the repository root:

```sh
./install/install.sh --host shared --mode local --yes
```

Then verify:

```sh
./install/verify-install.sh --target ./.hvn --host shared
```

If you already know your host, use an explicit host:

```sh
./install/install.sh --host claude --mode local --yes
./install/install.sh --host codex --mode global --yes
./install/install.sh --host opencode --mode local --yes
./install/install.sh --host hermes --mode local --yes
```

## What HVN Installs

The shared package includes:

- `HVN.md`
- `HVN.defaults.md`
- `commands/`
- `skills/`
- `templates/`
- `docs/`
- `mcp/`
- `profiles/`
- `core/`
- `adapters/`
- `memory/runs/archive/`

Host installs also copy skills and command files into host-specific locations when that mapping is known.

## Supported Hosts

- Claude Code
- Codex CLI
- OpenCode
- Hermes Agent
- Shared/manual install

Read `docs/compatibility-matrix.md` before assuming a host supports native commands, popups, connectors, MCP servers, or browser/simulator tooling.

## Prerequisites

Required:

- POSIX shell for `.sh` installers
- `mkdir`
- `cp`
- `rm`
- writable target directory

Optional:

- host CLI or existing config directory for detection
- Linear connector, MCP, or CLI access for Linear-first automation
- browser or simulator tools for QA workflows

Run preflight:

```sh
./install/detect-host.sh
./install/install.sh --host auto --mode local --dry-run
```

## Local Versus Global

Use local install when:

- a single repo should carry HVN
- you want project-specific commands and skills
- multiple projects need different versions

Use global install when:

- you want HVN available across projects
- the host supports user-level skills or commands
- you manage one preferred HVN version

## Host Install Paths

| Host | Local target | Global target |
| --- | --- | --- |
| Shared | `./.hvn` | `~/.hvn` |
| Claude Code | `./.claude/hvn` | `~/.claude/hvn` |
| Codex CLI | `./.codex/hvn` | `~/.codex/hvn` |
| OpenCode | `./.opencode/hvn` | `~/.config/opencode/hvn` |
| Hermes Agent | `./.hermes/hvn` | `~/.hermes/hvn` |

## Installer Options

```sh
./install/install.sh --help
```

Important options:

- `--host auto|shared|claude|codex|opencode|hermes`
- `--mode local|global`
- `--target path`
- `--dry-run`
- `--yes`
- `--verbose`
- `--skip-verify`

## Manual Install

Use manual install when scripts cannot run or when your host uses custom paths.

Read:

- `docs/manual-install.md`
- `docs/hosts/claude-code.md`
- `docs/hosts/codex-cli.md`
- `docs/hosts/opencode.md`
- `docs/hosts/hermes-agent.md`

## Verify

Shared:

```sh
./install/verify-install.sh --target ./.hvn --host shared --smoke
```

Claude:

```sh
./install/verify-install.sh --target ./.claude/hvn --host claude --smoke
```

Codex:

```sh
./install/verify-install.sh --target ~/.codex/hvn --host codex --smoke
```

OpenCode:

```sh
./install/verify-install.sh --target ./.opencode/hvn --host opencode --smoke
```

Hermes:

```sh
./install/verify-install.sh --target ./.hermes/hvn --host hermes --smoke
```

See `docs/verify-install.md`.

## Update

Update refreshes HVN-managed files from the current repository checkout:

```sh
./install/update.sh --host auto --mode local --yes
```

Run memory is preserved. Read `docs/update.md`.

## Uninstall

Uninstall removes only targets that look like HVN installs:

```sh
./install/uninstall.sh --target ./.hvn --host shared --yes
```

By default, uninstall backs up run memory before removing the install target. Use `--remove-memory` only when you intentionally want to remove local run memory. Read `docs/uninstall.md`.

## First Run

After install:

1. Read `docs/first-run.md`.
2. Run `hvn-help` in your host or open `commands/hvn-help.md`.
3. For non-trivial work, start with `hvn-onboard` or `hvn-linear-intake`.
4. Verify Linear access or prepare sync notes.
5. Create run memory for multi-step work.

## Troubleshooting

Read `docs/troubleshooting-install.md`.

Common checks:

```sh
./install/detect-host.sh
./install/install.sh --host shared --mode local --dry-run --verbose
./install/verify-install.sh --target ./.hvn --host shared --verbose
```

## FAQ

### Does one command work everywhere?

No. `install.sh --host auto` gives a good default, but host behavior differs. Use explicit `--host` when in doubt.

### Does install configure Linear?

No. HVN installs guidance and templates. Linear auth and connectors are configured in the host.

### Does uninstall delete run memory?

Not by default. It backs up memory before removing the install target.

### Can I reinstall safely?

Yes. Reinstall refreshes HVN-managed files and preserves `memory/runs/`.

### What if my command does not appear in the host?

Verify the host-specific command path, restart or reload the host if required, and read `docs/troubleshooting-install.md`.
