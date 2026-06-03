---
name: orca-goal-mode
description: Convert bounded specs or milestones into safe, verifiable goal contracts and use host-native goal mode when available.
---

# ORCA Framework Goal Mode

## What This Skill Is

A workflow for deciding whether long-running work should become a goal and for creating the contract that governs execution.

## Trigger

Use when a non-trivial task has an approved spec or bounded milestone, measurable completion condition, and one clear verification contract.

## Do Not Trigger

Do not use goal mode for ambiguous discovery, vague improvement requests, risky destructive work without approval, or tasks without verification.

## Required Inputs

- Approved spec or milestone
- Work item or issue
- Verification method

## Optional Inputs

- Host adapter
- Approval record
- Tool constraints
- Time or turn budget

## Exact Workflow

1. Decide whether the task is a good goal candidate.
2. Reject vague or unsafe goals before execution.
3. Convert the spec or milestone into a goal contract.
4. Check host support for native `/goal`.
5. Prefer native `/goal` on Codex and Claude Code when the host supports it and the contract is complete.
6. Fall back to ORCA Framework status artifacts when native support is unavailable.
7. Record lifecycle state in run memory, traces, and goal status.

## Expected Outputs

- Filled `templates/goal-contract.md`
- Filled `templates/goal-status.md`

## Quality Bar

The goal must be concrete, milestone-sized, verifiable, and safe to resume.

## Anti-Patterns

- using `/goal` without a spec
- using `/goal` for ambiguous discovery work
- using `/goal` for vague "make this better" asks
- using `/goal` without a meaningful verification path
- using `/goal` for risky or destructive tasks without approval
- making a whole roadmap one goal
- turning a project-sized outcome with fuzzy verification into one goal

## Relationship To Other ORCA Framework Skills And Commands

Works with `orca-spec`, `orca-plan`, `orca-approve`, `orca-trace`, `orca-state`, and `orca-inspect`.
