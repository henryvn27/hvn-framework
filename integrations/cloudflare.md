# Cloudflare

- Category: web and product
- Priority tier: tier 2
- Ideal use cases: edge-heavy apps, workers, CDN-first delivery
- Setup requirements: account, project configuration, deploy path
- Permissions or credentials: Cloudflare account and project access
- Supported workflows: edge deploys, worker-backed services, performance-sensitive web delivery
- Validation steps: deploy works, envs mapped, worker or pages target documented
- Common failure modes: runtime mismatch, env drift, unsupported node assumptions
- Related ORCA-HVN commands or docs: `orca-integration`, `orca-runtime`, `web-stack-guide.md`
- Related integrations: Next.js, PostHog, Sentry
- Risk notes: edge/runtime assumptions must stay explicit
- Web, mobile, or platform caveats: web and edge infra, not a mobile build path
