# Tool Safety Rules

HVN tool safety favors explicit allowlists, constrained execution, and reviewable calls.

## Core Rules

- Use allowlists over blocklists.
- Prefer structured parameters over shell interpolation.
- Validate arguments before execution.
- Use output size caps where possible.
- Use bounded timeouts for long-running or networked calls.
- Prefer least privilege and non-root execution.
- Pin external tool and MCP server versions when practical.
- Record meaningful tool use in traces, metrics, or inspection artifacts.

## Parameter Expectations

Good tool calls have:

- named parameters
- narrow scopes
- explicit paths or targets
- bounded dates, counts, or output sizes
- no raw secrets in arguments

Avoid:

- unconstrained globbing on broad paths
- shell strings assembled from untrusted input
- watch commands without a timeout
- commands that mutate account-level settings without approval

## Output Handling

Large outputs should be summarized. Store full logs only when they are needed, safe, and linked from the work item.

## Risk Escalation

Escalate to approval when a call may:

- delete or overwrite data
- change production, deploy, release, billing, credentials, or permissions
- expose private data
- install or update dependencies
- run code from an untrusted source
