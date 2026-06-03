# orca-impeccable

## Purpose

Route design-heavy frontend work into ORCA-HVN's official Impeccable wrapper path so the user can call Impeccable through ORCA instead of treating it as a separate product.

## When To Use

Use when the work is primarily about interface design quality, frontend shaping, visual iteration, anti-slop cleanup, or adopting Impeccable's design vocabulary inside an ORCA workflow.

## Required Inputs

- Design target, screen, feature, or frontend area

## Optional Inputs

- Current stack or framework
- Whether the user wants shaping, critique, polish, audit, or live iteration
- Whether Impeccable is already installed in the active harness

## Workflow

1. Confirm that the work is design-heavy enough to justify Impeccable.
2. Open `integrations/impeccable.md`.
3. Route to the right Impeccable mode: setup, shape, critique, polish, audit, or detector.
4. Prefer the upstream Impeccable install or update path for the active harness instead of describing a repo-local ORCA fork.
5. Keep ORCA as the workflow shell: spec, plan, approval, QA, and receipts still belong to ORCA unless the user explicitly wants a narrower design pass.
6. Be explicit that ORCA is wrapping a maintained upstream pack rather than re-implementing it locally.

## Outputs And Artifacts

- Impeccable wrapper path
- Relevant ORCA artifact updates when the work affects spec, plan, QA, or review state

## Related Commands And Skills

- Commands: `orca-design`, `orca-spec`, `orca-review`, `orca-integration`
- Skills: `orca-impeccable`, `orca-attribution`
