# Hermes Agent Host Adapter

Hermes Agent support for `/goal` should be documented conservatively. Do not assume parity with Codex CLI or Claude Code.

## ORCA-HVN Usage

Before using native goal mode:

- verify the installed Hermes version
- check local command help or official project docs
- confirm lifecycle behavior and stop semantics
- record any uncertainty in the goal contract

## Default Stance

Use ORCA-HVN fallback unless the current host clearly supports compatible goal behavior.

## Fallback

- goal contract
- shared state
- run trace
- checkpoint request or decision when pausing
- goal status handoff

## External Tool Setup

Hermes Agent integration details should be verified from the installed host, local docs, or project help output. Do not assume GitHub or Linear connector parity with Codex, Claude Code, or VS Code.

| Service | Preferred methods | Verification | Fallback |
| --- | --- | --- | --- |
| GitHub | host-documented connector, approved MCP, CLI helper, or manual | verify repo read and required write scope locally | local repo plus manual GitHub actions |
| Linear | host-documented connector, approved MCP, token path, or manual | verify issue read and comment write only when required | pasted issue context plus local Linear-ready artifacts |

If host capability is unclear, classify the integration as `unavailable in this harness` or `available via fallback method` until proven otherwise.

## Compatibility View

See [compatibility matrix](../compatibility-matrix.md) and [harness watch](../harness-watch.md) for the current conservative Hermes compatibility view.

## Source Notes

Public discussion may mention goal behavior, but ORCA-HVN should rely on local host documentation or command help before invoking it.
