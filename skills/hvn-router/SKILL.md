---
name: hvn-router
description: Select the most specific installed skill, preserve repo conventions, and apply Linear-first defaults before execution.
---

# HVN Router

## What This Skill Is

The HVN-native routing layer. It decides which installed skill should handle the current task and which work-management path applies.

## Trigger

Use before non-trivial work, ambiguous work, frontend/design tasks, redesign work, image-to-code tasks, brand work, full-output requests, and implementation inside existing repos.

## Do Not Trigger

Do not use when the user asks a tiny direct question that does not need project state, tools, or durable artifacts.

## Required Inputs

- User request
- Available installed skills or known skill set
- Current repo or product context

## Optional Inputs

- Linear project or issue
- Existing app conventions
- Visual reference
- Brand requirements
- Output completeness requirement

## Exact Workflow

1. Decide whether the work is non-trivial and should use Linear.
2. If non-trivial, invoke Linear-first project and issue handling or record blocked sync.
3. Identify explicit user-named skills.
4. Select the narrowest installed skill matching the primary task.
5. For high-stakes frontend or design work, prefer design/frontend-specific skills.
6. For existing products, prefer improve-in-place skills and preserve stack unless redesign is requested.
7. For image-to-code or image generation, route based on whether the deliverable is code or visual direction.
8. For brand work, route to brand/identity skills.
9. For exhaustive output requests, enable `hvn-full-output`.
10. State selected skill, fallback if any, and constraints borrowed from broader skills.

## Expected Outputs

- Routing decision
- Selected skill or fallback
- Linear status
- Preserve-stack or redesign posture
- Full-output status

## Quality Bar

The routing decision should prevent generic execution when a more specific installed skill would produce better work.

## Common Failure Modes

- Using generic build behavior for premium frontend work.
- Rewriting an existing product when improve-in-place was requested.
- Ignoring an explicit full-output request.
- Skipping Linear setup for non-trivial work.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-linear-core`, `hvn-full-output`, `hvn-build`, `hvn-design`, `hvn-review`, and platform-specific skills.
