# React Email

- Category: email and communications
- Priority tier: tier 2
- Ideal use cases: email templates defined in the same JS or TS ecosystem as the app
- Setup requirements: package setup, render pipeline, sending provider
- Permissions or credentials: none by itself; provider credentials needed to send
- Supported workflows: email template authoring and rendering
- Validation steps: preview works, send path chosen, rendering tested
- Common failure modes: no sending provider chosen, email templates not tested in clients
- Related ORCA-HVN commands or docs: `orca-design`, `orca-integration`
- Related integrations: Resend, Next.js
- Risk notes: template generation is not the same thing as deliverability
- Web, mobile, or platform caveats: email-system concern, not a mobile push path
