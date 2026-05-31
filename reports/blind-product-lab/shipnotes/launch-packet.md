# Launch Packet — ShipNotes (MVP)

Last updated: 2026-05-31

## Elevator Pitch

Paste a `git log` / PR list → get clean, editable release notes + a `CHANGELOG.md` entry → publish a shareable “public release page” link (no login for MVP).

## Target Buyer

- Indie devs + small teams shipping weekly who currently hand-write release notes or skip them because it’s annoying.

## Problem Statement

- Release notes are easy to procrastinate: messy inputs (commits, PRs), inconsistent format, and “I’ll do it later” turns into no notes at all.

## MVP Surface (Today)

- Deployed app: https://shipnotes-six.vercel.app
- Composer:
  - paste commits/PR bullets
  - deterministic grouping (Added / Fixed / Changed / Docs / Other + Breaking)
  - edit sections before export
  - copy Markdown outputs + download `.md` files
  - publish share URL via URL-hash payload (`/p#v1:...`)

## Monetization Hypothesis

MVP is intentionally backendless; monetize once there is a small loop of real usage.

- Paid upgrade (v2): “hosted short links” + history (no giant URLs), plus “remove branding” and “custom domain”.
- Pricing starting point:
  - $9/mo solo
  - $19/mo team
- First revenue path before v2 (if needed): sell a “ShipNotes Pro Pack” (templates + styling + CLI export presets) as a one-time download.

## Differentiation

- Zero setup / no auth for MVP.
- Deterministic (no AI key required) so users trust the output structure.
- “Publish link” makes sharing updates with testers/customers instant.

## Launch Channels (Low-Friction)

- Post to: Hacker News “Show HN”, r/IndieHackers, r/webdev, and a short X thread.
- Direct: DM 10 indie dev friends who ship weekly; ask for 5-minute feedback on the share link UX.

## Activation (First 60 seconds)

1) Click “Use example” (or paste `git log --oneline`)  
2) Click “Generate”  
3) Copy release notes → paste into GitHub release / App Store notes  
4) Copy publish URL → share with testers

## Success Metric (MVP)

- 10 people use it end-to-end (generate + copy or publish) in one week.
- 2 people say “I’ll use this for my next release”.

## Next Build Steps (Highest Leverage)

- Add “paste command” helper and “empty state” teaching so users don’t guess input format.
- Add payload-size warning that also offers “export-only” mode.
- If traction exists: replace URL-hash publishing with short links + saved history (requires backend).

