# Install Troubleshooting

Troubleshooting should be specific, not vague.

## Start Here

1. identify the failing stage
2. rerun the smallest relevant check
3. fix the exact failure layer
4. avoid restarting the entire setup unless the state is clearly broken

## Failure Layers

- prerequisite failure
- repo clone failure
- install script failure
- validation failure
- plugin setup failure
- harness setup failure
- auth or permission failure

## Fastest Useful Checks

```sh
git --version
./scripts/validate-repo.sh
./install/verify-install.sh --target ./.orca-hvn
./install/doctor.sh --target ./.orca-hvn
```

## Deep Links

- [common-install-errors.md](common-install-errors.md)
- [common-plugin-errors.md](common-plugin-errors.md)
- [common-harness-errors.md](common-harness-errors.md)
- [reset-and-retry.md](reset-and-retry.md)
