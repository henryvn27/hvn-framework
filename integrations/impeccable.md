# Impeccable

## ORCA-HVN Relationship

ORCA-HVN treats Impeccable as an official wrapped capability pack for design-heavy frontend work.

That means:

- users should be able to ask ORCA for Impeccable directly
- ORCA should route to Impeccable intentionally instead of acting like it is a separate side workflow
- attribution should stay explicit: ORCA wraps Impeccable, it does not rename Impeccable into fake native ORCA code

## Use When

- the task is mostly about interface quality, design language, visual iteration, or anti-slop cleanup
- the user wants a shared command vocabulary for design refinement
- frontend work needs a stronger design pass than generic implementation guidance

## ORCA Wrapper Entry Points

- `orca-impeccable`
- `orca-design`
- `orca-integration`

## What ORCA Expects Impeccable To Handle

- design shaping before implementation
- critique and polish passes
- anti-pattern detection for frontend slop
- live iteration for running frontend targets when the harness supports it

## What ORCA Still Owns

- intake and discovery
- spec and implementation-plan visibility when the work is broader than a design pass
- approval gates
- QA, review, and receipts
- attribution and repo-visible wrapper documentation

## Install And Update

- Preferred install: `npx impeccable skills install`
- Update path: `npx impeccable skills update`
- Check freshness: `npx impeccable skills check`
- Claude Code plugin path: install from the plugin marketplace if the harness-specific plugin path is preferred

## Harness Notes

- Impeccable publishes harness-aware install paths for major coding agents.
- Prefer the upstream harness-specific install path instead of copying skill files into ORCA-HVN.
- If the upstream pack is not installed, ORCA should still be able to explain the correct setup path and continue with the best local fallback.

## Recommended ORCA Pattern

1. Use ORCA to define the product or feature context.
2. Route the design-heavy portion through Impeccable.
3. Bring the outcome back into ORCA artifacts if it changes the approved scope, plan, QA targets, or review criteria.

## Provenance Rule

When ORCA recommends or calls Impeccable, say so plainly. Do not describe the result as if ORCA invented or natively ships Impeccable's design language.
