# Paved Roads

ORCA-HVN paved roads are the strongly recommended default paths for common work. They are opinionated, optional, and allowed to degrade safely by harness.

## Why They Exist

Paved roads reduce decision fatigue by encoding the best current default path instead of presenting a large menu of equal options.

## Current Default Roads

- idea to validation: `orca-idea` -> `orca-evaluate-idea` -> `orca-plan-idea` -> `orca-validate-idea` -> `orca-spec`
- standard software delivery: intake -> setup -> discover -> spec -> plan -> build -> review -> QA -> ship
- legacy slice modernization: intake -> discover -> `orca-legacy` -> spec -> phased plan -> build -> QA
- web SaaS default: Next.js + Vercel + Supabase + Stripe + Resend + PostHog + Sentry
- mobile app default: Expo + React Native + Expo EAS + Supabase or Firebase + RevenueCat + OneSignal + Sentry
- internal tool default: Next.js + Railway + Postgres + Clerk + GitHub + Linear

## Integration Bundles

Paved roads should recommend bundles, not unrelated tools:

- web road favors deploy, auth, billing, analytics, and monitoring that fit web workflows
- mobile road favors build, store, subscription, push, and crash workflows that fit native app constraints
- internal-tool road favors simpler hosting, database, auth, and work-management integration

Do not recommend a paved road unless the user's use case actually matches it strongly.

## Leaving The Road

Leave the paved road when:

- the user already has stronger artifacts
- a harness or integration is unavailable
- the work type genuinely differs from the default path
- the next-step guidance recommends a safer alternate branch

Leaving the road should be explicit. ORCA-HVN should say what default path it is leaving and why.
