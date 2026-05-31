# Compatibility Matrix

This matrix records host-level support conservatively. Do not assume parity across hosts.

| Host | Native goal mode | GitHub setup | Linear setup | HVN stance |
| --- | --- | --- | --- | --- |
| Codex CLI | Supported where `/goal` is available in the installed CLI version | connector, approved MCP, `gh`, or manual depending on environment | connector, approved MCP, or manual depending on environment | Validate local capability before relying on host-native setup |
| Claude Code | Supported in documented versions with `/goal` | MCP or configured connector when available; manual fallback | MCP path when approved; manual fallback | Use documented MCP setup but do not assume service auth is already present |
| Hermes Agent | Support must be verified in the installed host | host-documented connector, MCP, CLI, token, or manual | host-documented connector, MCP, token, or manual | Use fallback unless local Hermes docs confirm support |
| VS Code | Depends on active extension or agent surface | GitHub Copilot connector, MCP, `gh`, or manual | MCP, token path, or manual | Validate active workspace capabilities |
| Generic host | Unknown | CLI, approved MCP, token, or manual | approved MCP, token, or manual | Ask for host only when it changes setup |

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
