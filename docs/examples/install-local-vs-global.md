# Local Versus Global Install Example

## Local Install

Use local install when this repository should carry its own HVN version:

```sh
./install/install.sh --host shared --mode local --yes
./install/verify-install.sh --target ./.hvn --host shared --smoke
```

## Global Install

Use global install when one user-level HVN version should apply across projects:

```sh
./install/install.sh --host shared --mode global --yes
./install/verify-install.sh --target ~/.hvn --host shared --smoke
```

## Rule

If local and global installs both exist, host precedence is controlled by the host. Keep project-specific behavior local when correctness matters.
