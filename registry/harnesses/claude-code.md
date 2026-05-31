# Harness Capability Profile

## Harness Name

Claude Code

## Detection Hints

- Claude Code environment
- Claude Code-specific MCP setup context

## Supported Capabilities

- goal support

## Partial Capabilities

- shared state and checkpointing
- MCP and tool support
- GitHub integration
- Linear integration

## Unsupported Capabilities

- 

## Unclear Capabilities

- memory integration
- trace and inspector support
- approval and governance patterns
- multi-agent coordination support
- setup validation support

## Preferred Commands And Workflows

- use goal mode when supported and reviewed
- prefer MCP-based setup when validated

## Fallback Rules

- fall back to portable ORCA-HVN artifacts when MCP or service setup is missing

## Setup And Integration Caveats

- local MCP configuration and auth still determine real usability

## Risk Notes

- do not assume documented MCP support means service integrations are already available

## Last Reviewed

2026-05-30

## Evidence Links

- https://code.claude.com/docs/en/goal
- https://code.claude.com/docs/en/mcp
