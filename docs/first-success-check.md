# First Success Check

Use this right after install.

## Success Sequence

1. run install verification
2. run doctor
3. read [first-workflow.md](first-workflow.md)
4. add `.orca-framework/bin` or `$HOME/.orca-framework/bin` to `PATH`
5. use `orca-onboard` as the first workflow step
6. confirm you know the next command instead of guessing

## Validation Commands

```sh
./install/verify-install.sh --target ./.orca-framework
./install/doctor.sh --target ./.orca-framework
```

## Good First Success

A good first success is:

- one install target
- one verified setup
- one captured interaction preference baseline
- one small ORCA task
- one clear next step
