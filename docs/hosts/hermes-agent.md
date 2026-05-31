# Hermes Agent Host Adapter

Hermes Agent support for `/goal` should be documented conservatively. Do not assume parity with Codex CLI or Claude Code.

## HVN Usage

Before using native goal mode:

- verify the installed Hermes version
- check local command help or official project docs
- confirm lifecycle behavior and stop semantics
- record any uncertainty in the goal contract

## Default Stance

Use HVN fallback unless the current host clearly supports compatible goal behavior.

## Fallback

- goal contract
- shared state
- run trace
- checkpoint request or decision when pausing
- goal status handoff

## Source Notes

Public discussion may mention goal behavior, but HVN should rely on local host documentation or command help before invoking it.
