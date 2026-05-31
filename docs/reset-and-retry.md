# Reset And Retry

Use this only when the current setup state is clearly broken.

## Safe Reset Order

1. capture what failed
2. remove only the broken install target
3. rerun install
4. rerun verification before adding integrations

## Example

```sh
rm -rf ./.orca-hvn
./install/install.sh --mode local --target ./.orca-hvn
./install/verify-install.sh --target ./.orca-hvn
```

## Do Not Reset Yet If

- the issue is just missing auth
- the issue is a wrong harness assumption
- the issue is an optional plugin
