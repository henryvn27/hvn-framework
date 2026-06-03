# BugBrief Spec

## Product

- Name: BugBrief
- Type: new product for this run
- Buyer: QA contractors, small agencies, and early product teams that hand bugs to engineers in chat or docs instead of a mature tracker
- Monetization model: free shareable bug briefs now; later paid plan for saved history, branded exports, team templates, and tracker handoff

## Problem

Raw bug reports are often too loose to act on quickly. Engineers lose time extracting reproduction steps, expected behavior, environment context, and triage order from Slack messages or rough notes.

## Core Promise

Paste messy notes into BugBrief and get a cleaner, shareable bug brief with:

- summary
- severity
- reproduction steps
- expected behavior
- actual behavior
- notes
- regression risk
- triage checklist

## Scope For This Run

- static web app
- deterministic parsing only
- no auth
- no backend
- no saved history
- no external integrations
- public share page rendered from URL hash
- markdown copy + markdown download

## Non-Goals

- bug tracking system
- AI generation
- persistence
- team collaboration
- payments
- Linear/Jira sync

## Acceptance

1. A user can paste raw notes and generate a structured bug brief locally.
2. The output can be edited before sharing.
3. The app can copy or download the bug brief as markdown.
4. The app can generate a public share URL that renders the brief on a separate route.
5. The product ships either to a reachable Vercel URL or ends with one explicit external blocker after local verification.
