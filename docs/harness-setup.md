# Harness Setup

This page translates ORCA into harness-specific setup help.

## For Every Harness, Clarify

- what it is
- when you need it
- whether it is required or optional
- how ORCA maps onto it
- how to verify it works

## Current Harness Guides

- Codex: [hosts/codex-cli.md](hosts/codex-cli.md)
- Claude Code: [hosts/claude-code.md](hosts/claude-code.md)
- VS Code: [hosts/vscode.md](hosts/vscode.md)
- Generic: [hosts/generic.md](hosts/generic.md)

## Verification

Run:

```sh
./install/doctor.sh --harness codex
```

Replace `codex` with the harness you chose.
