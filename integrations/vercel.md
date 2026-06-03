# Vercel

- Category: web and product
- Priority tier: tier 1
- Ideal use cases: Next.js deployment, preview environments, env-managed web shipping
- Setup requirements: linked Vercel project, repo access, env configuration
- Permissions or credentials: Vercel account, project access
- Supported workflows: deploy, preview checks, env sync review, production readiness
- Preferred ORCA deploy surface: `orca-ship` with preview-by-default behavior and `skills/orca-ship/scripts/deploy.sh` as the fallback when CLI auth is unavailable
- Validation steps: project linked, deploy works, required env vars present
- Common failure modes: missing env sync, wrong project linkage, preview assumptions not mirrored in prod
- Related ORCA-HVN commands or docs: `orca-integration`, `orca-setup-integration`, `orca-validate-integration`, `web-stack-guide.md`
- Related integrations: Next.js, PostHog, Sentry, GitHub
- Risk notes: production config drift can hide behind green previews
- Web, mobile, or platform caveats: web-first; not a mobile build system
