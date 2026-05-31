# Source Of Truth Policy

This policy explains how ORCA should choose evidence when describing itself, recommending a workflow, or updating high-level docs.

## Default Rule

Use the strongest live operating evidence first.

For ORCA positioning and workflow guidance, that usually means:

1. the user’s vault or declared knowledge base
2. active repo artifacts and docs
3. the declared system of record such as Linear
4. direct statements in the current request
5. external primary sources
6. generic industry advice

## README And Intro Implication

Top-level project copy should be grounded in the strongest recurring patterns visible in the live evidence.

That means:

- reflect real work lanes
- reflect real friction
- reflect real review and delivery needs
- avoid substituting generic framework language when stronger evidence exists

## When Vault Evidence Is Strong

If the vault clearly shows recurring domains, workflows, or pain points:

- let that shape the README framing
- let that shape examples and starter workflows
- let that shape differentiation language
- avoid vendor-agnostic fluff that erases what the framework is actually for

## When Vault Evidence Is Weak

If vault evidence is sparse, stale, or unavailable:

- say so plainly
- treat any broader conclusion as extrapolation
- use generic guidance only as a fallback
- do not present fallback positioning as if it were evidence-backed

## What This Should Prevent

This policy exists to prevent:

- generic AI-framework positioning drift
- README copy that sounds detached from the actual work
- over-personal founder storytelling
- invented product identity based on trends instead of evidence

## Related Docs

- [truth-hierarchy.md](truth-hierarchy.md)
- [vault-derived-positioning.md](vault-derived-positioning.md)
- [readme-review.md](readme-review.md)
