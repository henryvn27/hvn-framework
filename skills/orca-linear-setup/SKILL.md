---
name: orca-linear-setup
description: Guide users through setting up Linear for ORCA-HVN, including states, labels, agent guidance, permissions, smoke tests, and opt-out mapping.
---

# ORCA-HVN Linear Setup

## What This Skill Is

A setup workflow for making Linear usable as ORCA-HVN's default coordination layer.

## Trigger

Use when a user asks to set up Linear, adopt ORCA-HVN in a Linear workspace, configure agent guidance, validate Linear readiness, or define an opt-out record.

## Do Not Trigger

Do not use when a project has explicitly opted out and the user is not asking about Linear setup.

## Required Inputs

- Setup scope: workspace, team, project, or opt-out record
- Coordination preference: Linear-first or opt-out

## Optional Inputs

- Existing Linear states
- Existing labels
- Agent connector details
- Permission policy
- Repository or product name
- Smoke-test issue ID

## Exact Workflow

1. Confirm Linear-first or opt-out mode.
2. If Linear-first, identify setup scope and target workspace, team, or project.
3. Inventory available states and map them to ORCA-HVN gates.
4. Inventory labels and recommend missing routing, risk, platform, QA, and approval labels.
5. Prepare guidance from `docs/linear-guidance.md` for workspace, team, or project installation.
6. Define agent permissions for reading, commenting, state changes, label changes, assignment, and delegation.
7. Create or recommend a smoke-test issue.
8. Verify access only when tools are available; otherwise mark verification as manual.
9. Record setup status using `templates/linear-setup-checklist.md`.
10. If opt-out, map ORCA-HVN issue, project, state, comment, and artifact concepts to the chosen record.

## Expected Outputs

- Linear setup checklist
- State mapping
- Label recommendation
- Agent guidance placement
- Permission policy
- Smoke-test issue instructions or result
- Opt-out system mapping when applicable

## Quality Bar

The setup should let a new agent pick up an issue, know which ORCA-HVN gate it is in, post the right comment, and avoid unsafe transitions.

## Common Failure Modes

- Treating Linear OAuth as configured without verification.
- Installing guidance too broadly before testing on a project.
- Letting agents move issues to done without evidence.
- Creating labels that do not map to real routing decisions.
- Forgetting that the user can opt out of Linear.

## Relationship To Other ORCA-HVN Skills And Commands

Feeds `orca-linear-intake`, `orca-linear-core`, `orca-linear-planner`, `orca-linear-qa`, and `orca-linear-release`.
