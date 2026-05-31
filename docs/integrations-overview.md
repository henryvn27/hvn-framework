# Integrations Overview

HVN starts with setup support for GitHub and Linear. More services can be added by creating an integration guide, checklist, validation expectations, and fallback behavior.

## Supported Initial Services

| Service | Common HVN uses | Required when | Fallback |
| --- | --- | --- | --- |
| GitHub | repo browsing, issue links, PRs, reviews, checks, releases, changelogs | HVN must perform GitHub reads or writes directly | local repo plus manual issue, PR, checks, or release steps |
| Linear | issue intake, planning comments, QA reports, ship checks, state transitions | Linear is the system of record and HVN must read or write it directly | pasted issue context plus local artifacts or another tracker |

## Integration Methods

- Native connector: host-provided service connector.
- MCP server: Model Context Protocol server exposed to the harness.
- API token: service token configured in the host, CLI, or environment.
- CLI helper: local command such as `gh` for GitHub.
- Plugin: host-specific installable capability.
- Manual: user pastes data or performs the service action directly.

## Status Values

- `connected`: reachable, authenticated, and scoped for the intended action
- `missing`: no integration path is configured
- `misconfigured`: configured but failing validation
- `unavailable in this harness`: the current host cannot use that integration path
- `available via fallback method`: direct integration is missing, but HVN can continue safely

## Harness Rule

Do not assume a setup path from one host works in another. Document uncertainty, validate locally, and offer a fallback before blocking progress.
