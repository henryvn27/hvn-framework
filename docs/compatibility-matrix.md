# Compatibility Matrix

This matrix records harness-level compatibility conservatively. Do not assume parity across hosts. If evidence is weak or conflicting, use `unclear`.

Status meanings:

- `supported`
- `partial`
- `not supported`
- `unclear`

## Current Matrix

| Harness | Goal mode | Run memory | Shared state / checkpoints | Trace / inspector | Tool / MCP support | GitHub integration | Linear integration | Approval / governance | Multi-agent patterns | Regression / eval / benchmark | Notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Codex | supported | partial | partial | partial | partial | partial | partial | partial | unclear | unclear | `/goal` is documented; external integrations depend on host configuration and available tools. |
| Claude Code | supported | unclear | partial | unclear | partial | partial | partial | unclear | unclear | unclear | `/goal` and MCP are documented; service setup still depends on local configuration. |
| Hermes Agent | unclear | unclear | unclear | unclear | unclear | unclear | unclear | unclear | unclear | unclear | Verify from current host docs before making stronger claims. |
| OpenCode | unclear | unclear | unclear | unclear | supported | partial | partial | unclear | unclear | unclear | OpenCode documents MCP support; other workflow compatibility should be verified per release. |
| Cursor | unclear | unclear | unclear | unclear | supported | partial | partial | unclear | unclear | unclear | Cursor documents MCP support and a curated MCP server catalog, including GitHub and Linear entries. |
| GitHub Copilot | unclear | unclear | unclear | unclear | supported | supported | partial | partial | unclear | unclear | Copilot documents MCP support, policy controls, and a built-in GitHub MCP path in supported surfaces. |
| VS Code | unclear | unclear | unclear | unclear | supported | partial | partial | unclear | unclear | unclear | Depends on the active extension and workspace policy. |
| Generic host | unclear | unclear | unclear | unclear | partial | partial | partial | unclear | unclear | unclear | Fall back to CLI, approved MCP, token, or manual workflows. |

## Footnotes

- `supported` does not imply native support. A capability may rely on MCP, connectors, or manual setup.
- GitHub and Linear integration columns reflect viable integration options, not guaranteed built-in connectors.
- `unclear` means HVN should prefer degraded mode or an explicit research note over a stronger claim.

## Related Artifacts

- [harness compatibility](harness-compatibility.md)
- [harness watch](harness-watch.md)
- `reports/compatibility/latest.md`

## Fallback

When native goal mode is missing or uncertain, use:

- [templates/goal-contract.md](../templates/goal-contract.md)
- [templates/goal-status.md](../templates/goal-status.md)
- shared state
- traces
- checkpoints
- run memory

When external integrations are missing or uncertain, use:

- [templates/tool-requirements.md](../templates/tool-requirements.md)
- [templates/integration-status.md](../templates/integration-status.md)
- [docs/degraded-mode.md](degraded-mode.md)
