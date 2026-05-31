# Distribution Plan — ShipNotes (MVP)

Last updated: 2026-05-31

Do not send anything without Henry approval.

## Goal (This Week)

Validate whether ShipNotes actually removes enough friction that real shippers will adopt it.

Success target:
- 10 people run generate → copy or publish within 7 days.
- 2 people explicitly say they’ll use it for their next release.

## Target Segments (Start Narrow)

1) Indie devs shipping weekly (solo apps, OSS maintainers, small SaaS)
2) Small teams (2–5 devs) who post GitHub Releases but skip release notes often

## Ask (Keep It Small)

- “Can you try this once with your last release’s commit list and tell me where it breaks?”

## Distribution Channels (Low-Friction)

- Direct DMs (primary): 10 people who ship weekly.
- One public post (secondary): “Show HN” or a single Reddit post once the DM loop yields any traction signals.

## DM Script (Short)

Version A (fast feedback):
- “I built ShipNotes: paste `git log --oneline` and it gives you clean release notes + changelog snippet + a shareable public release page link (no login).”
- “Can you try it with your last release and tell me what confused you in the first 60 seconds?”
- Link: https://shipnotes-six.vercel.app

Version B (pain-first):
- “Do you ever skip release notes because it’s annoying to write them?”
- “I made a tiny tool: paste commit/PR bullets and get clean release notes + a share link. No auth.”
- “If you can spare 3–5 minutes, can you try it and tell me what breaks?”
- Link: https://shipnotes-six.vercel.app

## What To Measure (Manual Is Fine)

- Did they understand what to paste without guidance?
- Did they succeed in <60 seconds?
- Did they use Copy Release Notes / Copy Changelog / Publish?
- Any “I’d pay if…” statements:
  - short links + history
  - remove branding
  - custom domain
  - GitHub release sync

## Follow-Up Questions

- “Would you use this for your next release? Why / why not?”
- “Would you pay $9/mo for hosted short links + history + remove branding?”
- “What’s your current workflow for release notes (if any)?”

## Near-Term Iteration Triggers

- If 2+ people ask for “history / not giant URLs”: prioritize hosted short links.
- If people paste bad formats: add explicit input-format detection + better empty states.
- If people worry about privacy: add clearer “URL is public” copy + “Export-only” path.

