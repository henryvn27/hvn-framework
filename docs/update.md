# Update

HVN updates refresh managed files from the current repository checkout.

## Update Current Project

```sh
./install/update.sh --host auto --mode local --yes
```

## Update Specific Host

```sh
./install/update.sh --host claude --mode local --yes
./install/update.sh --host codex --mode global --yes
./install/update.sh --host opencode --mode local --yes
./install/update.sh --host hermes --mode local --yes
```

## What Changes

Update refreshes:

- shared docs
- commands
- skills
- templates
- adapters
- profiles
- MCP examples

## What Is Preserved

The installer preserves:

- run memory under `memory/runs/`
- files outside the HVN target
- unrelated host config

## Rollback

There is no automatic version rollback. Use Git to check out a previous HVN revision, then run update again:

```sh
git checkout <previous-commit>
./install/update.sh --host shared --mode local --yes
```

Record the version or commit you install when rollback matters.
