# Codex CLI Host Adapter

Codex CLI may expose an experimental `/goal` command for long-running tasks. HVN should check the installed CLI version and command help before relying on it.

## HVN Usage

Use native goal mode when:

- the local CLI supports `/goal`
- the HVN goal contract is complete
- verification is observable
- approval gates are satisfied

## Lifecycle

Codex goal behavior should be treated as host-specific. When available, use the host's supported lifecycle commands for set, status, pause, resume, and clear. If local command help differs from these docs, follow the local installed version and record the difference in the goal status artifact.

## Fallback

If `/goal` is unavailable or experimental behavior is not acceptable, use HVN fallback:

- goal contract
- shared state
- run trace
- goal status artifact
- checkpoints for pause and resume

## Source

- https://developers.openai.com/codex/cli/slash-commands
