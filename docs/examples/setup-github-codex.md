# Setup GitHub In Codex

## Situation

Codex needs GitHub access to inspect PR checks.

## Quick Guidance

GitHub is required because PR checks live outside the local repo. Use an available GitHub connector, approved MCP server, or `gh` CLI.

Validate with a non-destructive auth and repo check. If GitHub auth is missing, continue locally and ask the user to paste check output.

## Fallback

Local build and test evidence can continue. PR status remains manual until GitHub access is restored.
