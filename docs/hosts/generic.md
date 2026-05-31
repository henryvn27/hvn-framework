# Generic Host Adapter

Use this adapter when the active harness is unknown or does not have a dedicated HVN host guide.

## External Tool Setup

| Service | Preferred methods | Verification | Fallback |
| --- | --- | --- | --- |
| GitHub | `gh` CLI, approved MCP, API token, or manual | check auth, repo read, and required write scope | local repo plus manual issue, PR, checks, or release actions |
| Linear | approved MCP, API token, or manual | check issue read and required write scope | pasted issue context plus local artifacts |

## Guidance

Ask for the harness only when it changes the next setup step. Otherwise give a generic path and a manual fallback.

Do not assume MCP support. Do not assume write permissions. Validate each layer separately.
