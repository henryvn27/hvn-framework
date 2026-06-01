# Blind Product Lab — Status

Last updated: 2026-06-01

## Current Product

- Product: ShipNotes
- Product workspace path: /Users/developeraccount/Library/Mobile Documents/com~apple~CloudDocs/Control Studios/ShipNotes
- Repo/branch: ShipNotes `main` @ `8b35e90`, ORCA-HVN `main` @ `8e22757`
- Stack: Vite + React + TypeScript (Tailwind v3) + URL-hash publishing (no backend for MVP)
- Launch target: Vercel static deploy
- Current deploy:
  - https://shipnotes-six.vercel.app
- Phase: deployed (MVP) + hardening + first-wave outreach

## What’s Done

- Initialized blind-product-lab tracking artifacts (`status.md`, `friction-log.md`, `run-history.md`).
- Selected product: ShipNotes.
- Created ShipNotes workspace and MVP scaffold; local build + lint pass.
- Wrote ShipNotes spec + plan under `reports/blind-product-lab/shipnotes/`.
- Completed blind QA report + screenshots under `reports/blind-product-lab/shipnotes/`.
- Deployed ShipNotes to Vercel.
- Added onboarding improvements (“Use example”) and `.md` download export; deployed to Vercel (2026-05-31).
- Tightened user-facing copy and status messages; build + lint verified (2026-05-31).
- Added summary field + downloadable HTML release page export (helps when publish URLs are too long); deployed to Vercel (2026-05-31).
- Added parse diagnostics so users can see which lines were kept vs ignored before trusting the generated notes; build + lint verified and redeployed (2026-05-31).
- Added markdown export presets (Default / GitHub Release / Customer Update) with a composer preset selector; build + lint verified and redeployed (2026-06-01).
- Started controlled launch outreach: sent one direct feedback ask to Trent Gegax at `trent.gegax@gramercyfund.com` with the live ShipNotes link (2026-05-31).

## Current Blocker

- Linear access blocked in this harness (401 reauthentication required), so Linear-first project/issue creation is not currently possible.
- Accessible direct-contact surface in this harness is thin, so the planned 10-person outreach loop cannot be executed blindly from current context.
- Real traction signal now depends on reply/usage feedback from the first outbound contact or a broader recipient list.

## Next Highest-Leverage Step

- Restore Linear auth and create the Linear project + issues for ShipNotes (blocked in this harness).
- Check for reply/usage feedback from Trent, then widen outreach only if more real recipients are available.
