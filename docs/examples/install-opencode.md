# Install OpenCode Example

## Goal

Install HVN locally for OpenCode.

## Commands

```sh
./install/install.sh --host opencode --mode local --yes
./install/verify-install.sh --target ./.opencode/hvn --host opencode --smoke
```

## Expected Result

```text
[ok] HVN install verified at ./.opencode/hvn
```

## First Run

OpenCode should read command files from `.opencode/command/` when configured. If a command does not appear, verify the host path and reload OpenCode.
