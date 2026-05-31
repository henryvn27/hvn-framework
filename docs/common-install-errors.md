# Common Install Errors

## Missing Dependency

Signal:
`git: command not found` or similar.

Fix:
Install the missing dependency, then rerun the step.

## Wrong Folder

Signal:
`Missing source item` from `install.sh`.

Fix:
Run the script from the ORCA repo root.

## Script Permission Failure

Signal:
shell reports that the script is not executable.

Fix:

```sh
chmod +x install/*.sh scripts/*.sh
```

## Broken Install Target

Signal:
`verify-install.sh` reports missing files.

Fix:
delete the broken target and reinstall with [reset-and-retry.md](reset-and-retry.md).
