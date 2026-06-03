# BugBrief Plan

## Chosen Path

- new product
- not an existing-project gap play

## Why This Won

- It fits the fresh-product-per-run policy.
- It has a credible recurring buyer problem.
- It can ship with the existing static-web + Vercel path.
- It avoids blocked dependencies like new credentials, backend setup, and public outreach.

## Rejected Options

### ReviewReply

- Stronger pain spike but too episodic for a clean recurring wedge.
- Better as a future niche product than as this run's blind execution target.

### ShipNotes Pro Pack

- Fastest shortcut if continuation were allowed.
- Rejected because the current blind-lab rule requires a fresh product unless an existing gap clearly beats it, and this run does not justify overriding that rule.

## Implementation Steps

1. Create a fresh `bugbrief` workspace under Control Studios.
2. Reuse the proven Vite + React + Tailwind + Vercel static path.
3. Implement deterministic note parsing into a typed bug brief document.
4. Build the composer UI, markdown export, and share-page route.
5. Run local lint/build checks.
6. Run a blind QA pass against the built app.
7. Deploy via existing Vercel auth if available.
8. Write launch packet, evidence, and blind-lab status updates.

## Risks

- Share URLs can become too long for very large briefs.
- Deterministic parsing will miss some note styles.
- Linear project/issue sync remains blocked by connector auth.

## Local Linear Backlog Once Auth Returns

- Project: ORCA-HVN Blind Product Lab
- Issue: Launch BugBrief MVP
- Issue: Add saved-history paid tier to BugBrief
- Issue: Add tracker handoff exports to BugBrief
