# External Tool Setup

External tools are services or local capabilities ORCA Framework can use to coordinate, inspect, or publish work outside the immediate repository. Examples include GitHub, Linear, browser automation, CI, release systems, and MCP servers.

Read [install.md](install.md) first if core ORCA install is not finished yet. External tool setup should not outrun the base install.

This setup layer decides which tools are needed for the current workflow, how the current harness can access them, how to validate access, and what fallback is available when setup is incomplete.

## Required vs Optional

A tool is required only when the next ORCA Framework action cannot be completed without it.

Examples:

- Linear is required when the workflow must read or update a Linear issue directly.
- GitHub is required when the workflow must open a PR, inspect PR checks, or create a GitHub issue directly.
- GitHub is optional when the local repo already contains the needed source and the user can manually file the issue or PR later.
- Linear is optional when the user can paste issue context and accept local handoff artifacts.

Do not tell the user to install a tool unless it is required for the next action.

## Three Setup Axes

Keep these separate:

- Service integration: the external service, such as GitHub or Linear.
- Transport or integration method: native connector, MCP server, API token, plugin, CLI helper, or manual copy/paste.
- Harness or host surface: Codex, Claude Code, VS Code, or a generic terminal/editor.

The same service may have different setup paths in different hosts.

## Decision Process

1. Identify the next ORCA Framework phase.
2. List tools needed for that phase.
3. Mark each tool as required or optional.
4. Detect or ask which harness is being used.
5. Choose the shortest viable setup path for that harness.
6. Validate reachability, authentication, scope, and write capability when safe.
7. Continue in degraded mode if the tool is optional or a manual fallback exists.

Runtime adaptation should choose the shortest valid setup path for the active host rather than the richest path available in some other harness.

## Fallback Behavior

Fallbacks should be explicit and practical:

- no Linear connection: paste issue title, description, comments, and desired state manually
- no GitHub integration: use the local repo, manual PR/issue creation, and pasted CI output
- no MCP support: use CLI, browser, or manual artifact workflows
- insufficient write scope: read what is available and ask the user to perform the write step

Record the fallback in the setup status so later agents do not assume full integration.
