# Integration Diagnostics

When an integration is missing or failing, ORCA-HVN should diagnose the class of failure, not just say "setup is broken."

## Common Diagnostic Classes

- not configured
- configured in the wrong platform path
- credential missing
- credential present but wrong scope
- host or harness cannot use the chosen integration method
- expected adjacent integration missing
- unsupported workflow for this platform

## High-Value Warnings

- Expo app without EAS but asking for build or release workflow help
- mobile subscription path using Stripe where app-store purchases are required
- React Native push path missing APNs or FCM configuration
- Vercel app with env assumptions not present in the project
- Supabase app with no decisions on auth, storage, or RLS
