# Install Claude Example

## Goal

Install HVN locally for Claude Code in the current repository.

## Commands

```sh
./install/install.sh --host claude --mode local --yes
./install/verify-install.sh --target ./.claude/hvn --host claude --smoke
```

## Expected Result

```text
[ok] HVN install verified at ./.claude/hvn
```

## First Run

Open Claude Code in the project and use `hvn-help` if command discovery is active, or ask Claude to use the matching command file from `.claude/commands/`.
