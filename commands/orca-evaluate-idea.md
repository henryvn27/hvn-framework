# orca-evaluate-idea

## Purpose

Evaluate an idea through venture-style lenses and produce a clear written judgment.

## When To Use

Use after a one-pager exists and the user wants pressure testing, opportunity classification, or a candid read on strengths and risks.

## Required Inputs

- Idea one-pager or equivalent summary

## Optional Inputs

- Founder background
- Research notes
- Competitor list
- Target outcome type

## Workflow

1. Use `orca-business-ideation`.
2. Apply founder, problem, market, competition, mechanism, defensibility, and evidence-versus-assumption lenses.
3. Fill `templates/idea-scorecard.md`.
4. Fill `templates/evidence-vs-assumption.md`.
5. Produce a written judgment and recommend pursue, park, kill, or revise.

## Outputs And Artifacts

- `templates/idea-scorecard.md`
- `templates/evidence-vs-assumption.md`
- `templates/idea-decision.md`

## Failure Cases

- If the one-pager is too weak, return to `orca-idea`.
- If the evaluation depends on unknown market facts, route targeted questions to research instead of pretending certainty.

## Related Commands And Skills

- Commands: `orca-idea`, `orca-plan-idea`, `orca-validate-idea`, `orca-research`
- Skills: `orca-business-ideation`, `orca-research`
