# Install Preflight

Preflight checks help the installer fail before it leaves a partial or confusing install.

## What The Installer Checks

The shared installer checks:

- shell can run the script
- required commands exist
- repository root contains HVN source files
- host value is supported
- mode value is supported
- target parent directory can be created
- target does not conflict with unrelated files
- target parent is writable

Host-specific installers rely on the shared installer and add host-native asset placement.

## Run A Dry Run

```sh
./install/install.sh --host auto --mode local --dry-run
```

Use explicit host selection when detection is ambiguous:

```sh
./install/install.sh --host claude --mode local --dry-run
```

## Detect Host Hints

```sh
./install/detect-host.sh
```

Detection is a convenience, not a guarantee. Multiple host hints mean you should pass `--host` explicitly.

## Permissions

If install fails with a writable-directory error:

```sh
ls -ld "$(dirname ./.hvn)"
```

Choose a writable target:

```sh
./install/install.sh --host shared --target /path/you/control/.hvn
```

## Existing Install

If the target already looks like an HVN install, reinstall refreshes it in place. If the target exists but does not look like HVN, the installer refuses to proceed.

## Unsupported Shells

The `.sh` scripts require a POSIX shell. On Windows without a POSIX shell, use PowerShell support where available or follow `docs/manual-install.md`.
