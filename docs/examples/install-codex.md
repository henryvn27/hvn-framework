# Install Codex Example

## Goal

Install HVN globally for Codex CLI.

## Commands

```sh
./install/install.sh --host codex --mode global --yes
./install/verify-install.sh --target "$HOME/.codex/hvn" --host codex --smoke
```

## Expected Result

```text
[ok] HVN install verified at /home/user/.codex/hvn
```

## First Run

Use Codex with an explicit workflow prompt:

```sh
codex "Use HVN hvn-help for this repository."
```

Codex may require additional configuration for local or global skill directories.
