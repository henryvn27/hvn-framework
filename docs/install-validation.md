# Install Validation

Install validation is the check layer that tells the user whether ORCA is actually ready.

## What It Checks

- required files exist
- docs, commands, skills, and templates were copied
- runnable `orca` and `orca-*` command shims exist in `bin/`
- install scripts are present
- core shell dependencies exist
- optional harness and service checks are routed correctly

## Validation Commands

Repo validation:

```sh
./scripts/validate-repo.sh
```

Installed target validation:

```sh
./install/verify-install.sh --target ./.orca-hvn
```

Broader install doctor:

```sh
./install/doctor.sh --target ./.orca-hvn --services github,linear
```

Harness-aware doctor:

```sh
./install/doctor.sh --target ./.orca-hvn --harness codex
```

## Output Shape

The result should tell the user:

- what passed
- what failed
- what was not checked
- what to do next
