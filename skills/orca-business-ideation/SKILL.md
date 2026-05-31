---
name: orca-business-ideation
description: Structure, evaluate, research, and validate startup-style ideas without collapsing into hype or generic brainstorming.
---

# ORCA-HVN Business Ideation

## What This Skill Is

A dedicated ORCA-HVN feature lane for founder ideation, venture-style evaluation, opportunity memos, and validation planning.

## Trigger

Use when the user wants to:

- generate or refine startup ideas
- assess founder-market fit or wedge quality
- compare opportunity quality
- research markets or competitors
- decide what to validate next
- turn an idea into an opportunity memo or validation plan

## Do Not Trigger

Do not use when the user already needs a product spec, implementation plan, or code change. In those cases route to `orca-spec`, `orca-plan`, or the delivery workflow.

## Required Inputs

- Idea statement, opportunity hypothesis, or business concept

## Optional Inputs

- Founder or team angle
- Market knowledge
- Research notes
- Desired opportunity type

## Exact Workflow

1. Start with `templates/idea-intake.md`.
2. Compress the idea into `templates/idea-one-pager.md`.
3. Apply founder, problem, market, competition, mechanism, defensibility, and evidence-versus-assumption lenses.
4. If facts are missing, recommend focused research instead of pretending certainty.
5. If the idea survives, write an opportunity memo and decision.
6. Design the smallest credible next validation experiment.
7. Bridge to `orca-spec` only when the opportunity is clear enough to justify product work.

## Expected Outputs

- Filled idea intake or one-pager
- Filled scorecard and evidence map when evaluation is requested
- Opportunity memo and decision when synthesis is requested
- Validation plan when next-step testing is requested

## Quality Bar

The output should be intellectually honest, practically useful, and explicit about what is known versus assumed.

## Common Failure Modes

- praising a weak idea because it sounds interesting
- skipping founder or distribution reality
- treating market research as proof
- hiding uncertainty inside a fake overall score
- designing validation plans that test everything at once
- jumping to product build before the opportunity is clear enough

## Relationship To Other ORCA-HVN Skills And Commands

Feeds `orca-research`, `orca-spec`, `orca-plan`, and future execution work. It is the upstream decision layer, not a substitute for product delivery artifacts.
