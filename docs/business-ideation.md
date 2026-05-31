# Business Ideation

ORCA-HVN business ideation is a distinct front-end workflow for startup ideas, venture evaluation, and early opportunity planning. It exists upstream of product specs and implementation work.

## Purpose

Use this feature area to:

- turn a rough concept into a one-page idea frame
- pressure-test the idea through founder, problem, market, competition, and execution lenses
- separate evidence from assumption
- collect focused desk research without pretending that research alone proves demand
- decide whether to pursue, park, kill, or narrow the idea
- design the next validation step before writing a product spec

## When To Use It

Use business ideation when the user is still deciding whether a company, product, or wedge is worth pursuing.

Use `orca-spec` instead when:

- the opportunity is already chosen
- the user needs a product contract for implementation
- the work is primarily a software delivery task rather than an idea-evaluation task

## Core Commands

- `orca-idea`: structure a rough idea into an intake and one-pager
- `orca-evaluate-idea`: apply venture-style evaluation lenses and produce a written judgment
- `orca-plan-idea`: turn a promising idea into an opportunity memo, validation plan, and execution bridge
- `orca-validate-idea`: design the smallest credible next experiment

## Core Artifacts

- [templates/idea-intake.md](../templates/idea-intake.md)
- [templates/idea-one-pager.md](../templates/idea-one-pager.md)
- [templates/idea-scorecard.md](../templates/idea-scorecard.md)
- [templates/evidence-vs-assumption.md](../templates/evidence-vs-assumption.md)
- [templates/opportunity-memo.md](../templates/opportunity-memo.md)
- [templates/validation-plan.md](../templates/validation-plan.md)
- [templates/idea-decision.md](../templates/idea-decision.md)

## Operating Rules

- Force compression before expansion. A weak one-pager should not become a long strategy memo.
- Score only to clarify judgment, not to hide judgment.
- Treat founder fit, problem intensity, market reach, competition, and execution logic as separate questions.
- Separate observed facts from inference and from hope.
- Prefer the smallest next experiment that changes the decision.
- Do not force every idea into venture-scale framing. Distinguish between lifestyle, niche, and venture-scale outcomes explicitly.

## Standard Flow

1. Capture the idea in an intake and one-pager.
2. Evaluate it through structured lenses.
3. Fill evidence-versus-assumption gaps with targeted research.
4. Produce an opportunity memo and decision.
5. Design the next validation experiment.
6. If the idea survives, bridge into spec-driven product work.

## Relationship To ORCA-HVN

Business ideation extends ORCA-HVN upstream:

- `orca-idea` creates the initial frame
- `orca-evaluate-idea` produces judgment and open questions
- `orca-research` or idea-specific research fills the most important gaps
- `orca-validate-idea` chooses the next experiment
- `orca-plan-idea` writes the opportunity memo and execution bridge
- `orca-spec` begins only after the opportunity and first validation path are clear enough
