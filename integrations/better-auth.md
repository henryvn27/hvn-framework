# Better Auth

- Category: auth
- Priority tier: tier 2
- Ideal use cases: teams wanting a more self-shaped auth stack
- Setup requirements: package setup, provider config, session/storage decisions
- Permissions or credentials: provider credentials where used
- Supported workflows: auth flows, session handling, provider integration
- Validation steps: provider config valid, session strategy documented, protected routes work
- Common failure modes: incomplete provider setup, session persistence confusion
- Related ORCA-HVN commands or docs: `orca-integration`, `integration-validation.md`
- Related integrations: Next.js, Postgres, Drizzle, Prisma
- Risk notes: more control means more integration responsibility
- Web, mobile, or platform caveats: often web-centric unless explicitly adapted
