# Integration Update Policy

Integrations can turn a safe core update into a disruptive local event.

## Rules

- assess integration-specific breakage risk before auto-apply
- allow deferral when local auth, scope, or transport assumptions would break
- treat GitHub, Linear, MCP, connector, and CLI paths separately
- include migration notes when integration behavior changes

## Default

If integration impact is unknown, prefer prompt-first behavior.
