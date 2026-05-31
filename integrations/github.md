# GitHub

- Category: business and project systems
- Priority tier: tier 1
- Ideal use cases: source control, PRs, issues, release workflows
- Setup requirements: repo access path, auth method, scope validation
- Permissions or credentials: connector, CLI auth, token, or SSH for repo access
- Supported workflows: repo reads, PRs, issue drafts, checks, releases
- Validation steps: auth works, repo reachable, needed write scope present
- Common failure modes: auth scope mismatch, host path mismatch, assuming connector parity across harnesses
- Related ORCA-HVN commands or docs: `orca-setup`, `orca-validate-integration`, `docs/integrations/github.md`
- Related integrations: GitHub Actions, Linear, Vercel
- Risk notes: external write actions should stay explicit
- Web, mobile, or platform caveats: service used across all stack types
