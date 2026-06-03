# Railway

- Category: web and product
- Priority tier: tier 2
- Ideal use cases: internal tools, simpler app hosting, service-plus-database stacks
- Setup requirements: project linkage, service config, env setup
- Permissions or credentials: Railway account and project access
- Supported workflows: deploy app services, attach databases, internal tool hosting
- Validation steps: service deploys, envs present, database linkage clear
- Common failure modes: missing envs, unclear service topology, production data coupling
- Related ORCA Framework commands or docs: `orca-setup-integration`, `internal-tool-stack.md`
- Related integrations: Postgres, Clerk, GitHub
- Risk notes: simple hosting can still hide production configuration debt
- Web, mobile, or platform caveats: often backend or internal-tool friendly rather than mobile-distribution focused
