# Spec — ShipNotes (MVP)

## Goal

Turn a pasted `git log` / PR list into:

1) polished-but-honest release notes (Markdown)  
2) a `CHANGELOG.md` entry (Markdown)  
3) a shareable “public release page” URL (no login, MVP can be backendless)

## Background

Blind Product Lab Run 1 (2026-05-31) selected “ShipNotes” as the weekly carry-forward product.

Constraints:

- Must be buildable end-to-end in a Codex-style CLI workflow.
- Prefer low-friction deploy (Vercel/static) and avoid new credentials or paid setup.
- Linear is currently blocked in this harness (401 reauthentication required), so the work item is tracked in repo artifacts for now.

## Users And Scenarios

- Indie dev / small team shipping frequently.
  - Scenario A: paste `git log --oneline` output; get decent release notes quickly.
  - Scenario B: paste a PR list / bullet list; still get usable notes.
  - Scenario C: edit generated sections and publish a share link for users/testers.

## Requirements

- Input accepts:
  - `git log --oneline` style lines (`<sha> <message>`)
  - bullet lists / PR-style lines
- Output supports:
  - grouped release notes sections (Added / Fixed / Changed / Other)
  - raw Markdown + “copy to clipboard”
  - changelog entry Markdown + “copy to clipboard”
- Editing:
  - user can edit title/version/date and section items before export/publish
- Publish (MVP):
  - generate a share URL that renders a clean public page
  - MVP should not require a database (URL-hash payload is acceptable)
- No secrets required for MVP.

## Non-Goals

- GitHub OAuth / repo sync (v2).
- Multi-user orgs/teams (v2).
- Email capture, RSS, or analytics (v2).
- “AI polishing” requiring an API key (optional later).

## Edge Cases

- Empty input: show clear error and example format.
- Very large input: warn if publish URL would exceed safe length; allow export-only.
- Non-conventional commit messages: bucket into “Other” and keep raw text.
- Merge commits / noise lines: ignore common merge formats.

## Acceptance Criteria

- Given 10+ mixed commit lines, app produces grouped release notes and changelog entry deterministically.
- User can edit generated content and see outputs update.
- “Publish” produces a share URL; opening that URL shows the public release page with the same content.
- `npm run build` succeeds.

## Assumptions

- URL-hash publishing is “good enough” for MVP launch evidence.
  - Validate: run a real deploy (later) and share URL with another browser profile.
- Conventional commits are common enough to group, but not required.
  - Validate: test with non-conventional samples.

## Open Questions

- What exact changelog format should be canonical (Keep a Changelog vs simple)?
  - Blocks: none for MVP; pick a simple format and revisit after first user feedback.

