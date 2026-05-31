# Blind QA Report — ShipNotes (2026-05-31 Run 2)

## Context Received

- A local web app at `http://127.0.0.1:5173/` titled “ShipNotes”.
- On-screen guidance: “Paste a git log or PR list → generate release notes → edit → copy/publish.”

## Context Excluded

- Hidden specs, implementation notes, repo history, and planned roadmap were not used during the first-look pass.

## Product Inference

ShipNotes is a small tool for turning a pasted commit/PR list into release notes and a changelog entry, with a shareable “published page”.

## Task Attempts

### Task 1 — Use the example path to generate notes

- Steps:
  1) Click “Use example”.
- Observed result:
  - Input is filled and notes populate immediately.
- Outcome: success.

### Task 2 — Publish and open the public release page

- Steps:
  1) Click “Open published page”.
  2) Verify the public page shows the same content.
- Observed result:
  - New tab opens to `/p#...` and renders the doc with sections.
- Outcome: success.

## Findings

- Good:
  - “Use example” removes all “what do I paste?” confusion and proves the flow works fast.
  - The extra “Download” buttons make the output feel more like a real tool (not just clipboard-only).
- Issues / risks:
  - Publish URL length still grows quickly for large inputs; MVP warning exists but there’s no short-link fallback yet.

## Evidence

- Screenshots:
  - `/Users/developeraccount/Library/Mobile Documents/com~apple~CloudDocs/Control Studios/ORCA-HVN/reports/blind-product-lab/shipnotes/evidence/shipnotes-home-2026-05-31-run2.png`
  - `/Users/developeraccount/Library/Mobile Documents/com~apple~CloudDocs/Control Studios/ORCA-HVN/reports/blind-product-lab/shipnotes/evidence/shipnotes-generated-2026-05-31-run2.png`
  - `/Users/developeraccount/Library/Mobile Documents/com~apple~CloudDocs/Control Studios/ORCA-HVN/reports/blind-product-lab/shipnotes/evidence/shipnotes-published-2026-05-31-run2.png`

## Confidence Limits

- Local-only pass (no deployment validation).
- No accessibility audit beyond basic snapshot inspection.

