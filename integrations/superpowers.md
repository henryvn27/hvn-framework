# Superpowers

## ORCA Framework Relationship

ORCA Framework treats Superpowers as an official wrapped capability pack for execution-heavy coding workflow.

That means:

- users should be able to ask ORCA for Superpowers directly
- ORCA should route to Superpowers when the upstream workflow is the strongest fit
- attribution should stay explicit: ORCA wraps Superpowers, it does not pretend the upstream methodology originated here

## Use When

- the user wants stronger engineering discipline in coding-agent execution
- design, plan, worktree, and execution sequencing matter
- multi-agent or subagent-driven coding flow would benefit from a maintained upstream pattern instead of a local reimplementation

## ORCA Wrapper Entry Points

- `orca-superpowers`
- `orca-build`
- `orca-plan`
- `orca-delegate`
- `orca-integration`

## What ORCA Expects Superpowers To Handle

- design-before-code and plan-before-build enforcement
- structured implementation task breakdown
- isolated execution patterns such as worktrees when appropriate
- upstream-maintained agent workflow conventions for supported harnesses

## What ORCA Still Owns

- repo-visible intake, approval, and artifact structure
- attribution, wrapper clarity, and governance docs
- adjacent issue, QA, review, and receipts flow
- routing when Superpowers is not installed or not the best fit

## Install And Update

- Codex plugin path: install from the official Codex plugin marketplace
- Codex App path: install from the Codex plugin sidebar
- Claude plugin path: install from the official Claude plugin marketplace or the Superpowers marketplace
- OpenCode path: follow the upstream `.opencode/INSTALL.md`
- Other harnesses: use the harness-specific upstream install method rather than vendoring the skills into ORCA Framework

## Harness Notes

- Superpowers is maintained across several harnesses.
- ORCA should prefer upstream packaging and updates instead of maintaining a stale fork unless there is a clear product reason to fork.
- If Superpowers is unavailable in the active harness, ORCA should preserve the workflow intent locally rather than claiming the wrapper is installed.

## Recommended ORCA Pattern

1. Use ORCA for intake, constraints, and approval boundaries.
2. Route planning or execution-heavy implementation through Superpowers when it is the best fit.
3. Bring resulting decisions, plans, and evidence back into ORCA artifacts.

## Provenance Rule

When ORCA recommends or calls Superpowers, say so plainly. Do not blur the wrapper boundary or hide the upstream workflow behind vague ORCA-only language.
