# VS Code Host Adapter

VS Code support depends on the extension and agent surface in use. GitHub Copilot in VS Code supports MCP server configuration, but HVN should still validate the active workspace and available tools before relying on an integration.

## External Tool Setup

| Service | Preferred methods | Verification | Fallback |
| --- | --- | --- | --- |
| GitHub | GitHub Copilot connector, GitHub MCP server, `gh` CLI, or manual | confirm repo access, issue or PR access, and needed write scope | local repo plus manual GitHub steps |
| Linear | MCP server when supported by the active client, API/token path if approved, or manual | confirm target issue read and required write capability | pasted issue context plus local artifacts |

## Guidance

- Use workspace-level MCP config only when the project should own that setup.
- Use user-level setup when credentials are personal.
- Do not commit secrets.
- Validate with non-destructive reads before writes.

## Sources

- https://code.visualstudio.com/docs/copilot/chat/mcp-servers
- https://docs.github.com/en/copilot/how-tos/provide-context/use-mcp/extend-copilot-chat-with-mcp
