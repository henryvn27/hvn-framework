# Tool Fit Rules

Tool recommendations should be based on fit conditions, not catalog membership.

## Fit Dimensions

Each recommended tool or bundle should define:

- ideal use cases
- strong-fit conditions
- weak-fit conditions
- anti-fit conditions
- when to recommend
- when not to recommend
- what alternatives fit better elsewhere

## Examples

- recommend Expo and React Native when the user is building a mobile app and values speed, shared JS, and startup ergonomics
- recommend RevenueCat for native digital subscriptions
- recommend Stripe for web billing
- recommend Vercel primarily for Next.js and modern web deployment workflows
- recommend Supabase when the user wants fast Postgres, auth, and storage with strong startup fit
- treat NotebookLM as a strong fit for research synthesis, document-grounded Q&A, study notebooks, and user-managed project knowledge
- treat NotebookLM as a weak fit for billing, deployment, generic app infra, or execution workflows
- if the user explicitly asks for NotebookLM or already uses it, switch to setup-help mode rather than debating the choice
- avoid mobile-only tooling for web-only projects
- avoid enterprise-heavy recommendations for simple solo-founder MVPs unless the user already chose them
