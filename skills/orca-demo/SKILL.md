---
name: orca-demo
description: Create a personalized low-input ORCA showcase flow and convert it into a bounded `/goal` prompt that should run to completion.
---

# ORCA Demo

## What This Skill Is

A first-run showcase workflow for people who want to feel ORCA's value fast without writing a long prompt or knowing the framework first.

## Trigger

Use when the user wants:

- a single prompt that shows ORCA's power
- a personalized output with very little input
- a customized product or business direction instead of a canned template
- a `/goal` prompt that should keep going until the result is actually done

## Do Not Trigger

Do not use when the user already has a concrete repo task, approved spec, or specific product they want built.

## Required Inputs

- a short statement about the user's interests, goals, or preferred output type

## Optional Inputs

- preferred platform
- monetization preference
- involvement preference
- timebox

## Exact Workflow

1. Ask only a few high-value questions.
2. Capture them in `templates/demo-brief.md`.
3. Choose a demo direction that is:
   - personalized
   - simple enough to finish
   - impressive enough to show ORCA's value
   - not likely to collapse into the same result for every user
4. Prefer small complete outputs over ambitious half-built ones.
5. Translate the brief into a bounded `/goal` prompt.
6. Require the prompt to use ORCA stages and keep advancing until the chosen output is complete, verified, and documented.
7. Include stop conditions only for destructive actions, credential or billing changes, DNS changes, or genuinely product-defining decisions.

## Expected Outputs

- filled `templates/demo-brief.md`
- a ready-to-run `/goal` prompt
- one short explanation of why this demo direction is the strongest fit

## Quality Bar

The result should feel personal and runnable.
It should not read like a generic startup brainstorm or a vague "build something cool" ask.

## Common Failure Modes

- asking too many setup questions
- choosing a demo scope too big to finish
- producing the same business idea for every user
- writing a `/goal` prompt that stops at discovery instead of execution
- sounding impressive but not giving the user something runnable

## Relationship To Other ORCA-HVN Skills And Commands

Pairs with `orca-business-ideation`, `orca-goal-mode`, `orca-onboard`, and `orca-spec`.
