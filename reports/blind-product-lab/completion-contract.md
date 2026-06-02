# Blind Product Lab — Completion Contract

Use this file as the hard definition of "100 percent complete" for each blind product run.

## Core Rule

Each run must ship one new thing that is small enough to finish end-to-end inside the run.
Do not carry product work forward from a previous run.

## Required Done Criteria

A blind product run counts as 100 percent complete only if all of these are true:

1. A fresh product is chosen for this run.
2. The product has a dedicated artifact root:
   - workspace, repo, folder, or equivalent shippable package root
3. The product has a written spec and a written implementation plan.
4. The promised core loop is implemented and usable.
5. Exact local verification commands were run and recorded.
6. Blind QA evidence exists:
   - screenshots, terminal transcript, generated output, or equivalent proof
7. The product ends in one of these shipped states:
   - deployed to a real reachable URL, or
   - exported as a runnable local artifact with exact run instructions and proof it works
8. A launch packet or handoff artifact exists:
   - short explanation, who it is for, how to use it, and what shipped
9. `reports/blind-product-lab/status.md` is updated to the final complete state for that run.
10. `reports/blind-product-lab/run-history.md` records why the run qualifies as 100 percent complete.

## Scope Compression Rules

If the initial idea is too large, compress scope immediately by removing:

- multi-role support
- dashboards
- auth
- team features
- complex persistence
- integrations that require new credentials
- broad marketing surfaces

The goal is one fully working user loop, not a roadmap.

## Blocker Rules

If a blocker appears:

- route around it using a simpler stack or a smaller promise
- prefer static, local, or no-backend delivery paths
- abandon the current idea and pick a smaller new one if needed

Do not keep a partially completed product alive for the next run.

## Non-Done States

These do not count as 100 percent:

- spec only
- scaffold only
- local prototype with no verification
- deployed shell with broken core loop
- "needs launch next run"
- "needs polish next run"
- "continue ShipNotes next week" style carry-forward work
