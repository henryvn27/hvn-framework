# Install Troubleshooting

## Unsupported Shell

The `.sh` scripts require a POSIX shell. If your environment cannot run them, use `docs/manual-install.md` or PowerShell support where available.

## Host Not Detected

Run:

```sh
./install/detect-host.sh
```

If detection is unclear, use explicit host selection:

```sh
./install/install.sh --host claude --mode local --yes
```

## Permission Error

Choose a target you can write:

```sh
./install/install.sh --host shared --target "$HOME/.hvn" --yes
```

Check parent permissions:

```sh
ls -ld "$(dirname "$HOME/.hvn")"
```

## Conflicting Prior Install

If the target exists but is not HVN, the installer refuses to continue. Choose a different target or move the conflicting directory.

## Command Not Appearing

Check host-native command path:

- Claude: `.claude/commands/`
- OpenCode: `.opencode/command/`

Then restart or reload the host if needed.

## Skill Not Appearing

Check host-native skill path:

- Claude: `.claude/skills/`
- Codex: `.codex/skills/` or configured skill directory
- OpenCode: `.opencode/skills/`
- Hermes: `.hermes/skills/`

Verify:

```sh
./install/verify-install.sh --target <target> --host <host> --verbose
```

## Global Versus Local Confusion

Local install affects one project. Global install affects the user-level host config. If both exist, host precedence is controlled by the host, not HVN.

## Install Worked But Behavior Is Missing

Likely causes:

- host did not load the command or skill directory
- Linear connector is not configured
- MCP tools are not configured
- local project instructions override global instructions
- the command is logical but not host-native

Read the relevant host guide in `docs/hosts/`.

## Stale Config From Older Versions

Run uninstall for the old target, then reinstall:

```sh
./install/uninstall.sh --target <old-target> --host <host> --yes
./install/install.sh --host <host> --mode local --yes
```

Back up run memory before removing old targets.
