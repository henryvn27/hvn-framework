# Codex CLI Host Adapter

Codex CLI may expose an experimental `/goal` command for long-running tasks. ORCA-HVN should check the installed CLI version and command help before relying on it.

## ORCA-HVN Usage

Use native goal mode when:

- the local CLI supports `/goal`
- the ORCA-HVN goal contract is complete
- verification is observable
- approval gates are satisfied

## Lifecycle

Codex goal behavior should be treated as host-specific. When available, use the host's supported lifecycle commands for set, status, pause, resume, and clear. If local command help differs from these docs, follow the local installed version and record the difference in the goal status artifact.

## Fallback

If `/goal` is unavailable or experimental behavior is not acceptable, use ORCA-HVN fallback:

- goal contract
- shared state
- run trace
- goal status artifact
- checkpoints for pause and resume

## External Tool Setup

Codex setup should be verified against the installed CLI and available connectors. Do not assume every Codex environment exposes the same external tools.

| Service | Preferred methods | Verification | Fallback |
| --- | --- | --- | --- |
| GitHub | connector when available, approved MCP, or `gh` CLI | check auth, repo reachability, and required read/write scope | local repo plus manual issue, PR, check, or release steps |
| Linear | connector when available, approved MCP, or manual context | read target issue or validate pasted issue context | pasted issue data plus local artifacts for manual posting |

Use `orca-check-setup` before blocking on GitHub or Linear. If setup is incomplete but the next phase is local, continue in degraded mode.

## Compatibility View

See [compatibility matrix](../compatibility-matrix.md) and [harness watch](../harness-watch.md) for the current conservative Codex compatibility view.

## Source

- https://developers.openai.com/codex/cli/slash-commands
