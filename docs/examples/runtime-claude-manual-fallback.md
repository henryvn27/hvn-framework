# Runtime Example: Claude Manual Fallback

## Situation

The harness is Claude Code, but the required service integration is not configured.

## Route

- detected harness: Claude Code
- integration support: partial
- runtime choice: recommend MCP setup only if validation succeeds
- fallback: local artifact plus manual posting

## Why

Documented MCP support does not guarantee the service is already reachable or writable.
