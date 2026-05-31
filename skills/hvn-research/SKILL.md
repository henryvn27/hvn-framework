---
name: hvn-research
description: Gather evidence from authoritative sources and convert it into a decision-ready research brief.
---

# HVN Research

## What This Skill Is

A focused research workflow for facts that affect implementation or product decisions.

## Trigger

Use when information may be current, external, domain-specific, high-risk, or uncertain.

## Do Not Trigger

Do not use for facts already present in the repo or conversation unless accuracy is high-stakes.

## Required Inputs

- Research question
- Decision the research supports

## Optional Inputs

- Source preferences
- Recency requirement
- Jurisdiction or platform version

## Exact Workflow

1. Define the decision and evidence needed.
2. Prefer primary sources and official documentation.
3. Record citations, dates, and confidence.
4. Explain how findings affect the spec or plan.

## Expected Outputs

- Filled `templates/research-brief.md`

## Quality Bar

Findings should be actionable and distinguish fact from inference.

## Common Failure Modes

- Summarizing sources without a decision.
- Using stale or secondary evidence for current technical claims.
- Omitting uncertainty.

## Relationship To Other HVN Skills And Commands

Feeds `hvn-spec`, `hvn-plan`, and `hvn-security`.
