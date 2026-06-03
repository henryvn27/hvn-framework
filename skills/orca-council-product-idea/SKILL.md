---
name: orca-council-product-idea
description: Use a five-subagent council to generate and pressure-test product or startup ideas before they earn a spec.
---

# ORCA Product Idea Council

## What This Skill Is

A specialized council for generating or improving product ideas, startup wedges, and marketable business concepts.

It uses the `orca-model-council` structure, but the five workers are tuned for product-idea quality rather than generic brainstorming.

## Trigger

Use when the user wants:

- a strong product idea
- a more marketable startup concept
- a wedge that can plausibly sell
- multiple candidate ideas ranked by strength

## Five Council Roles

1. Problem Hunter
2. Customer Realist
3. Distribution And GTM Skeptic
4. Builder And Execution Realist
5. Contrarian Doubter

## Stage-1 Expectations

Each worker should propose or refine the idea around:

- who specifically has the pain
- why the pain is painful enough to matter
- what current alternative loses
- why this wedge could spread or sell
- what makes the idea weak, crowded, or fake-demand

## Stage-3 Synthesis Must Produce

- top recommendation
- runner-up if one is close
- opportunity type:
  - venture-scale candidate
  - strong niche or lifestyle business
  - unclear but promising wedge
  - weak or overcrowded idea
- biggest unanswered assumption
- next validation step

## Required Outputs

At minimum, fill or contribute to:

- `templates/idea-one-pager.md`
- `templates/idea-scorecard.md`
- `templates/idea-decision.md`
- `templates/opportunity-memo.md` when the winner survives

## Failure Modes

- cool-sounding but unsellable ideas
- vague customer definition
- skipping distribution reality
- treating novelty as market strength

## Relationship To Other ORCA Framework Skills And Commands

Pairs with `orca-business-ideation`, `orca-research`, `orca-evaluate-idea`, `orca-plan-idea`, and `orca-validate-idea`.
