# Integration Use-Case Detection

ORCA Framework should infer the smallest useful profile before recommending tools.

## Typical Use Cases

- web SaaS
- mobile app
- internal tool
- AI product
- landing page or marketing site
- consumer mobile subscription app
- B2B SaaS
- MVP prototype
- enterprise integration workflow
- local-only developer workflow

## Useful Signals

- platform: web, mobile, backend-only, or mixed
- app type
- monetization model
- auth needs
- data and backend needs
- deployment or release needs
- team size or speed preference
- whether the user already chose tools

## Detection Rule

Infer silently when the signals are strong.

Ask a concise clarifying question only when the missing context changes the recommendation materially.

If the signal is still weak, stay neutral.
