# Supabase

- Category: backend and data
- Priority tier: tier 1
- Ideal use cases: app backend with Postgres, auth, storage, and edge functions
- Setup requirements: Supabase project, env vars, schema decisions, RLS policy planning
- Permissions or credentials: project URL, anon key, service role where justified
- Supported workflows: auth, database, storage, edge functions, app backend delivery
- Validation steps: env vars present, auth or storage decision documented, RLS and schema direction explicit
- Common failure modes: no auth decision, no storage decision, edge functions with weak boundaries, service-role misuse
- Related ORCA-HVN commands or docs: `orca-validate-integration`, `integration-validation.md`
- Related integrations: Supabase Auth, Postgres, Expo, Next.js, Stripe
- Risk notes: broad surface area creates ambiguity if architecture choices stay implicit
- Web, mobile, or platform caveats: works across web and mobile, but auth and offline behavior differ by client
