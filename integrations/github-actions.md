# GitHub Actions

- Category: testing and CI
- Priority tier: tier 2
- Ideal use cases: CI pipelines, checks, automation, release workflows
- Setup requirements: workflow files, secrets, runner assumptions
- Permissions or credentials: GitHub repo access and action secrets
- Supported workflows: CI, tests, release checks, automation
- Validation steps: workflow syntax valid, secrets present, runs pass
- Common failure modes: missing secrets, environment drift, workflows assuming unavailable services
- Related ORCA-HVN commands or docs: `orca-integration`, `orca-ship`, `orca-review`
- Related integrations: GitHub, Playwright, Expo EAS
- Risk notes: green CI can still hide missing production validation
- Web, mobile, or platform caveats: generic automation surface, not a mobile distribution service by itself
