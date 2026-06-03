# Linear Setup

ORCA-HVN helps teams set up Linear as the default coordination layer for agentic software work. The framework does not handle OAuth, create credentials, or assume access to a workspace. It gives users a practical setup sequence, state model, labels, guidance, and a smoke test.

## Setup Outcome

After setup, a team should have:

- A Linear workspace or team selected for ORCA-HVN work.
- Equivalent workflow gates for triage, spec, build, review, QA, ship, and done.
- Labels for routing, risk, platform, QA mode, and approval.
- Agent guidance installed at workspace, team, or project level.
- A test issue proving agents can read context and post comments.
- A decision about whether agents may change states directly or only recommend transitions.

## Step 1: Choose Scope

Decide where ORCA-HVN will run:

- Workspace-wide for all software work.
- Team-level for one engineering team.
- Project-level for a single product or repository.

Start project-level if the team is unsure. Expanding a good workflow is easier than unwinding a noisy workspace-wide rollout.

## Step 2: Configure States

ORCA-HVN expects gates, not exact names. Configure or map states equivalent to:

- `Triage`
- `Ready for Spec`
- `Spec Ready`
- `Ready for Build`
- `In Progress`
- `In Review`
- `In QA`
- `Ready to Ship`
- `Done`

If the team already has states, write the mapping in the project description or team guidance.

## Step 3: Configure Labels

Recommended labels:

- `needs-triage`
- `needs-spec`
- `needs-plan`
- `needs-approval`
- `agent-build`
- `review-required`
- `blind-qa`
- `guided-qa`
- `regression`
- `security-review`
- `ready-to-ship`
- `blocked`

Platform labels are also useful:

- `web`
- `ios`
- `api`
- `cli`
- `docs`
- `infra`

## Step 4: Install Agent Guidance

Paste guidance from `docs/linear-guidance.md` into the appropriate Linear guidance location:

- Workspace guidance for broad defaults.
- Team guidance for engineering workflow.
- Project-specific guidance for repo or product details.

Keep guidance short enough that agents can follow it. Link to ORCA-HVN docs for deeper policy.

## Step 5: Connect Agent Access

Use the agent client's Linear connector, app integration, or MCP setup. Confirm the agent can:

- List teams or projects.
- Read an issue.
- Read comments and labels.
- Post a comment.
- Read available states.

Decide separately whether the agent can update state, labels, assignee, or project. ORCA-HVN works well when agents can recommend transitions even if humans perform them.

Preferred setup order:

1. Use the harness's native Linear connector when it exists and is approved.
2. Otherwise use Linear's official remote MCP endpoint: `https://mcp.linear.app/mcp`.
3. Use a bearer token path only when non-interactive auth is required and the environment can store the token safely.
4. Fall back to pasted issue context and local artifacts when auth or transport is blocked.

Codex-specific remote MCP setup:

1. Add the RMCP feature flag to `~/.codex/config.toml`:

```toml
[features]
experimental_use_rmcp_client = true
```

2. Add the server:

```sh
codex mcp add linear --url https://mcp.linear.app/mcp
```

3. Then complete auth with:

```sh
codex mcp login linear
```

Generic MCP-capable hosts can usually use:

```sh
npx -y mcp-remote https://mcp.linear.app/mcp
```

If interactive auth is not viable, use the documented bearer-token path with `Authorization: Bearer <token>` through the host's supported MCP configuration.

## Step 6: Create A Smoke-Test Issue

Create a low-risk issue:

Title: `ORCA-HVN setup smoke test`

Description:

```text
Use ORCA-HVN to confirm this Linear project is ready for agent coordination.

Expected result:
- Agent reads this issue.
- Agent identifies the current state and labels.
- Agent posts a short ORCA-HVN setup check comment.
- Agent recommends the next gate without changing state unless allowed.
```

Labels: `needs-triage`, `docs`

Run `orca-linear-setup` or ask the agent to perform an ORCA-HVN setup check.

## Step 7: Decide Opt-Out Rules

Even Linear-first teams should define opt-out rules. Record:

- Who can opt out.
- Which alternative system of record is allowed.
- Where specs, plans, QA reports, review findings, and ship checks live.
- How agents should announce the opt-out mapping.

## Setup Checklist

Use `templates/linear-setup-checklist.md` to record the setup. Post it to the project, a setup issue, or the repository docs.

## Failure Modes

- Linear returns `401 Reauthentication required`.
- Agents should record Linear as blocked, continue only with the strongest local-only verification that still makes sense, and note exactly which project or issue update must be posted once auth is restored.
- Codex remote MCP setup fails because the RMCP feature flag is missing from `~/.codex/config.toml`.
- OAuth succeeds once, then cached auth state goes stale. Reset `~/.mcp-auth` only when the documented auth flow is stuck and a fresh login is required.
- Agents can read issues but cannot post comments.
- States exist but do not represent ORCA-HVN gates.
- Blind QA agents receive too much issue context.
- Agents can move issues to done without evidence.
- Guidance is installed at workspace level but conflicts with project-specific rules.
- Credentials are pasted into repo files instead of secret storage.
