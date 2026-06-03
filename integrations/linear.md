# Linear

- Category: business and project systems
- Priority tier: tier 1
- Ideal use cases: system of record for ORCA Framework work items
- Setup requirements: workspace access, project or team mapping, auth method
- Permissions or credentials: connector, MCP, token, or manual fallback
- Supported workflows: issue intake, plan comments, QA reports, ship checks
- Validation steps: auth works, issue read works, write path documented
- Common failure modes: auth expired, state mapping unclear, direct write unavailable in harness
- Related ORCA Framework commands or docs: `orca-linear-intake`, `orca-linear-sync`, `docs/linear-workflow.md`
- Related integrations: GitHub, Notion, Slack
- Risk notes: keep project-specific and framework-specific work separated
- Web, mobile, or platform caveats: system-of-record layer across platforms
