---
name: orca-tool-governance
description: Review and govern external tools and MCP servers with explicit trust levels, constraints, and audit expectations.
---

# ORCA-HVN Tool Governance

## What This Skill Is

A workflow for deciding whether tools and MCP servers are safe enough to use, under what constraints, and with what audit trail.

## Trigger

Use before introducing a new tool or MCP server, expanding tool permissions, or calling a high-risk external tool.

## Do Not Trigger

Do not use this as a substitute for product security review when the tool call is only one part of a larger security change.

## Required Inputs

- Tool or MCP server name
- Purpose
- Source or owner
- Intended context

## Optional Inputs

- Version or package pin
- Exposed tool list
- Permission scope
- Prior registry entry

## Exact Workflow

1. Identify the tool or server and its source.
2. List allowed use and risky behaviors.
3. Define parameter validation, timeout, output, and logging expectations.
4. Assign trust status.
5. Record approval requirements for risky calls.
6. Update or draft the registry entry.

## Expected Outputs

- Filled `templates/tool-registry-entry.md` or `templates/mcp-server-entry.md`
- `templates/mcp-review.md` when reviewing an MCP server

## Quality Bar

The decision should make the trust boundary and allowed use obvious to another maintainer.

## Common Failure Modes

- treating tool availability as permission to use it
- approving a server without reviewing exposed tools
- failing to document risky parameters

## Relationship To Other ORCA-HVN Skills And Commands

Works with `orca-tool-review`, `orca-mcp-review`, `orca-approve`, `orca-checkpoint`, and `orca-security`.
