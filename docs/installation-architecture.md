# Installation Architecture

HVN installation has three layers:

1. Shared package
2. Host adapter assets
3. Verification and first-run guidance

## Shared Assets

The shared package is installed under a target such as `.hvn`, `.claude/hvn`, or `~/.codex/hvn`.

It contains:

- operating manuals
- commands
- skills
- templates
- docs
- profiles
- MCP examples
- core manifest
- host adapters
- run memory directory

This package is the durable reference copy.

## Host-Specific Adapters

Host adapters copy selected files into host-native locations:

- Claude Code: skills and commands
- Codex CLI: skills and `AGENTS.md`
- OpenCode: skills and commands
- Hermes Agent: skills

If a host needs manual configuration, the installer prints that limitation.

## Local Versus Global

Local installs live inside the current project and are best for repo-specific behavior. Global installs live in user config directories and are best when one HVN version should apply across projects.

## Manual Versus Automated

Automated install is the preferred path when the shell scripts can run. Manual install is documented for custom host paths, locked-down systems, Windows environments without POSIX shell, or host-specific layouts the installer cannot detect.

## Verification Strategy

Verification checks:

- shared package files
- required docs and templates
- required commands and skills
- run memory directory
- host adapter files
- host-native skills or commands when applicable

Smoke checks confirm key files contain expected headings.

## Update Strategy

`install/update.sh` refreshes HVN-managed files from the current checkout by re-running the installer. It preserves run memory and local artifacts by default.

## Uninstall Strategy

`install/uninstall.sh` removes only a target that passes HVN safety checks. It removes host-native HVN skills and commands for selected hosts. Run memory is backed up unless the user passes `--remove-memory`.

## Safety Rules

- Never remove a target unless it contains HVN marker files.
- Never claim host commands are active until verification passes.
- Keep run memory inspectable and preserved by default.
- Fail before copying if prerequisites are missing.
- Prefer explicit host selection when detection is ambiguous.
