# Uninstall

HVN uninstall is designed to remove only HVN-managed files.

## Shared Uninstall

```sh
./install/uninstall.sh --target ./.hvn --host shared --yes
```

## Host Uninstall

Claude:

```sh
./install/uninstall.sh --target ./.claude/hvn --host claude --yes
```

Codex:

```sh
./install/uninstall.sh --target ~/.codex/hvn --host codex --yes
```

OpenCode:

```sh
./install/uninstall.sh --target ./.opencode/hvn --host opencode --yes
```

Hermes:

```sh
./install/uninstall.sh --target ./.hermes/hvn --host hermes --yes
```

## Safety Checks

The script refuses to remove a target unless it contains HVN marker files:

- `HVN.md`
- `HVN.defaults.md`
- `commands/`
- `skills/`

## Run Memory

By default, uninstall backs up run memory before removing the target.

Use this only when you intentionally want to remove memory:

```sh
./install/uninstall.sh --target ./.hvn --host shared --remove-memory --yes
```

## Manual Cleanup

If a host command still appears after uninstall, remove stale host-native command files:

- Claude: `.claude/commands/hvn-*.md`
- OpenCode: `.opencode/command/hvn-*.md`

Then restart or reload the host.
