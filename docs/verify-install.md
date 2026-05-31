# Verify Install

Verification is a required part of installation. Do not rely on "files copied" as proof that HVN is ready.

## Shared Verification

```sh
./install/verify-install.sh --target ./.hvn --host shared --smoke
```

## Host Verification

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

## What Verification Checks

- shared package files
- required command files
- required skill files
- required docs and templates
- host adapter file
- host-native skills or commands where applicable
- run memory directory
- smoke content in core files when `--smoke` is used

## Verbose Mode

```sh
./install/verify-install.sh --target ./.hvn --host shared --verbose
```

Use verbose mode when diagnosing missing files.

## If Verification Fails

1. Read the missing path in the error.
2. Confirm the target path and host are correct.
3. Re-run install with `--verbose`.
4. If the host uses custom paths, follow `docs/manual-install.md`.
