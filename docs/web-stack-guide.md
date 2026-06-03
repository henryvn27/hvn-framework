# Web Stack Guide

Use this guide when a web path is the clearest low-friction fit, not just because the stack is popular.

The default ORCA Framework web stack bias is:

- Next.js
- Vercel
- Supabase
- Stripe
- Resend
- PostHog
- Sentry

## Why This Is The Default

- strong documentation and adoption
- fast deploy and preview workflows
- clear auth, database, and edge-function paths
- straightforward analytics and monitoring layering

## Key Web Decisions

- Vercel versus Cloudflare versus Railway hosting path
- Vercel deploy guardrails (slug naming, linking, SPA rewrites): see [`docs/deploy/vercel-guardrails.md`](deploy/vercel-guardrails.md)
- Supabase versus thinner Postgres-only backend
- Stripe versus Paddle or LemonSqueezy for billing
- PostHog versus lighter analytics
