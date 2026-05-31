# Degraded Mode

Degraded mode lets ORCA-HVN continue when an external integration is missing, optional, or partially available.

## Principles

- Do not block local work for optional tools.
- Preserve the system of record through local artifacts when direct writes are unavailable.
- State what the user must do manually.
- Record the missing capability so future agents do not assume full setup.

## Examples

### No Linear Connection

Use pasted issue context. Write specs, plans, QA reports, and ship checks as local artifacts. Ask the user to paste them into Linear or use another tracker.

### No GitHub Integration

Use the local repo. Prepare commit messages, PR descriptions, draft issues, and release notes locally. Ask the user to create or update GitHub records manually.

### No MCP Support

Use a CLI helper, native connector, browser workflow, or manual copy/paste path. Do not claim MCP-only features are available.

### Read-Only Access

Read service context, then produce a local write artifact for the user to post manually.

## Done Condition

Degraded mode is acceptable when the user can still complete the ORCA-HVN phase with clear manual steps and no hidden loss of evidence.
