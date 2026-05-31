---
name: orca-integration-recommendation
description: Recommend only best-fit stack tools for a clear use case, otherwise stay neutral or help with the user's chosen tool.
---

# ORCA-HVN Integration Recommendation

## What This Skill Is

A restrained recommendation layer on top of the broader integration system.

## Trigger

Use when the user asks what stack or tool fits best.

## Do Not Trigger

Do not trigger broad recommendations just because a supported tool exists.

## Exact Workflow

1. Detect the use case from the smallest useful context.
2. Check whether the user already chose tools.
3. If the user already chose, switch to setup-help mode unless the choice is clearly incompatible.
4. If recommendation mode is appropriate, recommend only strong-fit tools or bundles.
5. Add a modest confidence label.
6. If the fit is unclear, stay neutral or ask one concise clarifying question.

## Quality Bar

Recommendations should be explainable, minimal, evidence-based, and respectful of user choice.
