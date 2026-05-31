# Install Test Matrix

HVN install tests cover script syntax, repository validation, dry-run behavior, shared install, host install wrappers, and verification.

## Covered Locally

- `./scripts/validate-repo.sh`
- `./install/install.sh --host shared --mode local --dry-run`
- shared install into a temporary target
- Claude adapter install into a temporary target
- Codex adapter install into a temporary target
- OpenCode adapter install into a temporary target
- Hermes adapter install into a temporary target
- `verify-install.sh` for each target
- `uninstall.sh --dry-run`

## Covered In CI

The CI-safe workflow checks:

- shell syntax for install scripts
- dry-run does not write target files
- shared install into a temporary directory
- host install wrappers into temporary directories
- verification for each host target

## Not Covered In CI

CI does not prove:

- a host app actually reloads commands
- Linear auth works
- MCP servers are installed
- browser or simulator tools are available
- global install paths are writable on every user machine

Those are documented as host configuration responsibilities.
