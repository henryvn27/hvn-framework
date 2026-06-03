# Resend

- Category: email and communications
- Priority tier: tier 2
- Ideal use cases: transactional email, auth email, product notifications
- Setup requirements: account, domain setup, API key
- Permissions or credentials: Resend API key and domain verification
- Supported workflows: email sending, transactional workflows
- Validation steps: domain verified, key present, test email succeeds
- Common failure modes: unverified domain, environment mismatch, templates untested
- Related ORCA Framework commands or docs: `orca-integration`, `saas-stack-guide.md`
- Related integrations: React Email, Next.js, Stripe
- Risk notes: deliverability and domain setup matter
- Web, mobile, or platform caveats: backend or web service concern, not a native mobile push substitute
