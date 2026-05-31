# Plan — ShipNotes (MVP)

## Objective

Implement `reports/blind-product-lab/shipnotes/spec.md`.

## Phases

### Phase 1 — Scaffold + routes (MVP skeleton)

- Goal: Runnable app with `/` (composer) and `/p` (published page).
- Expected files or systems touched:
  - `/Users/developeraccount/Library/Mobile Documents/com~apple~CloudDocs/Control Studios/ShipNotes/src/*`
- Implementation notes:
  - Use React Router.
  - Use Tailwind v3 for fast styling.
- Verification command or evidence:
  - `npm run build`
  - `npm run dev` manual smoke
- Rollback or recovery:
  - Revert to Vite scaffold baseline.

### Phase 2 — Parse input + generate release doc

- Goal: Deterministic parsing + section grouping from git log / PR list.
- Expected files or systems touched:
  - `src/lib/*`
  - composer UI
- Verification command or evidence:
  - Add a small `npm run build` gate + manual sample inputs.
- Rollback or recovery:
  - Keep “Other” section fallback; avoid hard failures.

### Phase 3 — Export + publish link

- Goal: Copyable Markdown outputs + share URL that round-trips content.
- Expected files or systems touched:
  - `src/lib/publish.ts`
  - `/p` route rendering
- Verification command or evidence:
  - Generate link, open in new tab, verify same content renders.
- Rollback or recovery:
  - If payload too big, degrade to export-only and show message.

### Phase 4 — Blind QA pass + friction capture

- Goal: Blind first-look pass on the runnable UI; fix obvious onboarding gaps.
- Expected files or systems touched:
  - copy, empty states, layout polish
- Verification command or evidence:
  - Blind QA report artifact + screenshots if available
- Rollback or recovery:
  - Keep changes small; avoid redesign churn.

## Dependencies

- Linear: blocked (401 reauthentication required) — record project/issue to create once restored.
- Deploy: Vercel auth not yet verified; keep MVP deploy-ready but do not mutate account settings.

## Review Gates

- No secrets committed.
- Basic security sanity: no HTML injection into published page.
- Blind QA report before attempting deploy.

## Status

- Phase 1: done
- Phase 2: done
- Phase 3: done
- Phase 4: done (2026-05-31 + run2 follow-up)

### Phase 5 — Onboarding + export polish

- Goal: Make first-time success obvious and reduce “clipboard-only” friction.
- Implemented:
  - “Use example” one-click generation.
  - Download `.md` exports for both outputs.
- Verification:
  - `npm run build`
  - `npm run lint`
  - Blind QA evidence: `blind-qa-2026-05-31-run2.md`

### Phase 6 — Micro-launch + signal collection

- Goal: Validate that users complete generate→copy/publish without handholding.
- Blocker:
  - Linear project/issue tracking still blocked by connector auth (401).
