# Plugin Troubleshooting

When a plugin fails, do not just say "reinstall it."

## Check In Order

1. Was the plugin actually required for this workflow?
2. Was the plugin installed for the correct harness or host?
3. Did the plugin base install work before ORCA-specific setup started?
4. Is the failure about auth, config, version mismatch, or host support?

## Typical Fix Types

- remove duplicate config
- use the host-specific setup path instead of a generic one
- verify auth separately
- if Linear returns `401 Reauthentication required`, treat Linear as temporarily blocked and continue in degraded local-only mode until the connector is reauthenticated
- disable the plugin and continue with the core ORCA path if the plugin is optional

## Related Docs

- [common-plugin-errors.md](common-plugin-errors.md)
- [reset-and-retry.md](reset-and-retry.md)
