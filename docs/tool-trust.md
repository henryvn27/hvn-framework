# Tool Trust

HVN treats external tools as untrusted until they are explicitly reviewed and governed. A tool may be useful without being safe for every context.

## Trust Levels

- `allowed`: approved for normal use in documented contexts
- `allowed with constraints`: approved only with stated limits, parameters, or environments
- `approval required`: must pass a checkpoint or approval gate before use
- `blocked`: must not be used

## What Counts As A Tool

A tool is any external capability an agent can call outside its own reasoning, including:

- shell commands
- MCP tools
- browser automation
- repository and issue trackers
- deploy, release, or CI systems
- file conversion or document tooling
- networked APIs

## Default Posture

New tools start as `approval required` until reviewed. High-risk tools may stay approval-required permanently even after review.

## Risk Factors

Increase scrutiny when a tool can:

- modify files, repos, issues, releases, deployments, credentials, or account settings
- execute commands
- read sensitive local or remote data
- call external networks
- produce large or unbounded output
- run long-lived or watcher processes
- hide its implementation or update path

## Required Governance

Each governed tool should have a registry entry with:

- name
- purpose
- owner or source
- trust status
- allowed contexts
- risky behaviors
- validation requirements
- permission scope
- audit or logging expectations
- review date

Use [templates/tool-registry-entry.md](../templates/tool-registry-entry.md).

## Approval Integration

Use approval gates or checkpoints before:

- first use of an unreviewed tool
- use outside allowed context
- high-risk parameters
- destructive actions
- credential, release, deploy, or account-level operations

See [docs/approval-gates.md](approval-gates.md) and [docs/human-checkpoints.md](human-checkpoints.md).
