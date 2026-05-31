# Install Hermes Example

## Goal

Install HVN locally for Hermes Agent.

## Commands

```sh
./install/install.sh --host hermes --mode local --yes
./install/verify-install.sh --target ./.hermes/hvn --host hermes --smoke
```

## Expected Result

```text
[ok] HVN install verified at ./.hermes/hvn
```

## First Run

Configure Hermes to load `.hermes/skills/`. Use shared command files from `.hermes/hvn/commands/` as workflow prompts when native command mapping is not configured.
