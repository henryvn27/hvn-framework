# BugBrief Launch Packet

## What Shipped

- BugBrief MVP
- static web app
- deterministic note-to-brief parser
- markdown copy/download
- public share page rendered from URL hash

## Buyer

- QA contractors
- agencies doing QA or release support
- early product teams that still hand bugs around in chat

## Monetization

- current: free MVP
- next: paid history, branded exports, team templates, tracker handoff

## Core User Loop

1. Paste raw bug notes.
2. Generate a structured brief.
3. Edit if needed.
4. Share a public link or export markdown.

## Live Surface

- Production URL: https://bugbrief.vercel.app

## Verification

- Local:
  - `npm run lint`
  - `npm run build`
- QA:
  - local blind first-look screenshots captured
  - production smoke screenshot captured

## Known Limits

- No persistence
- No team features
- Share links can grow long on very large reports
- Parsing is deterministic, not model-driven
