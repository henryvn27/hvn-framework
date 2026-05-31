# Choose Your Stack

ORCA-HVN should bias toward one good default path per use case.

## I Am Building A Web SaaS

Start with:

- [web-stack-guide.md](web-stack-guide.md)
- [saas-stack-guide.md](saas-stack-guide.md)

Default:

- Next.js + Vercel + Supabase + Stripe + Resend + PostHog + Sentry

## I Am Building A Mobile App Fast

Start with:

- [mobile-stack-guide.md](mobile-stack-guide.md)
- [guides/expo-guide.md](guides/expo-guide.md)

Default:

- Expo + React Native + Expo EAS + Supabase or Firebase + RevenueCat + OneSignal + Sentry

## I Need Auth + Billing + Analytics

Web default:

- Clerk or Supabase Auth
- Stripe
- PostHog

Mobile default:

- Supabase Auth or Firebase Auth
- RevenueCat
- PostHog or Firebase Analytics plus Sentry

## I Need An Internal Tool

Default:

- Next.js + Railway + Postgres + Clerk + GitHub + Linear
