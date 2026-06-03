# Bitrise

- Category: testing and CI
- Priority tier: tier 3
- Ideal use cases: mobile CI and release pipelines
- Setup requirements: Bitrise project, signing and workflow config
- Permissions or credentials: Bitrise access and signing secrets
- Supported workflows: mobile CI, build, release automation
- Validation steps: workflows present, signing valid, app builds successfully
- Common failure modes: signing drift, workflow sprawl, missing environment separation
- Related ORCA Framework commands or docs: `orca-integration`, `mobile-stack-guide.md`
- Related integrations: Expo EAS, React Native, GitHub
- Risk notes: mobile CI failures often come from config debt rather than app logic
- Web, mobile, or platform caveats: mobile CI-specific
