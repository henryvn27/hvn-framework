# orca-superpowers

## Purpose

Route execution-heavy software work into ORCA Framework's official Superpowers wrapper path so users can call Superpowers inside ORCA instead of maintaining a separate workflow identity.

## When To Use

Use when the user wants Superpowers-style engineering discipline, planning rigor, worktree isolation, subagent execution, or a maintained upstream coding workflow that ORCA should wrap rather than clone.

## Required Inputs

- Work item, feature, bug, or implementation target

## Optional Inputs

- Current harness
- Whether the user wants full Superpowers workflow, only a planning segment, or only an execution segment
- Whether Superpowers is already installed in the active harness

## Workflow

1. Confirm that Superpowers is the strongest fit for the coding workflow.
2. Open `integrations/superpowers.md`.
3. Route to the correct install, update, or usage path for the active harness.
4. Prefer the upstream Superpowers packaging for the active harness instead of describing a repo-local ORCA clone or fork.
5. Keep ORCA as the outer workflow shell for intake, approvals, receipts, and repo-visible attribution.
6. Be explicit that ORCA is wrapping a maintained upstream pack rather than representing the workflow as purely native ORCA behavior.

## Outputs And Artifacts

- Superpowers wrapper path
- Relevant ORCA artifact updates when the work affects spec, plan, review, or delivery state

## Related Commands And Skills

- Commands: `orca-build`, `orca-plan`, `orca-delegate`, `orca-integration`
- Skills: `orca-superpowers`, `orca-attribution`
