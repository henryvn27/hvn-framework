# Model Council

ORCA Framework model council is a portable multi-subagent deliberation pattern for judgment-heavy questions.

It is adapted from Andrej Karpathy's `llm-council` idea:

1. independent first opinions
2. anonymized peer critique and ranking
3. final chair synthesis

ORCA applies that pattern to product, feature, and business decisions rather than only general question answering.

## Default Shape

- 1 parent chair
- 5 worker subagents
- isolated first-pass reasoning
- anonymized peer review
- synthesized final recommendation

If the harness does not support native subagents, preserve the same structure as sequential pseudo-subagents.

## Why Use It

Use a council when:

- the decision is high judgment
- one agent is likely to anchor too fast
- disagreement is useful
- the user wants a stronger answer than generic brainstorming

Do not use it when the work is already straightforward implementation.

## Use Cases

- product idea generation and pressure testing
- marketable business or wedge evaluation
- deciding whether a new feature deserves roadmap or spec work
- comparing multiple strategic options

## ORCA Skills

- `orca-model-council`
- `orca-council-product-idea`
- `orca-council-feature-evaluation`
- `orca-council-market-opportunity`

## Operating Rules

- parent talks to the user
- workers do not
- preserve disagreement
- do not fake consensus
- end with a decision, not just a transcript

## Artifacts

- [templates/council-brief.md](../templates/council-brief.md)
- [templates/council-opinion.md](../templates/council-opinion.md)
- [templates/council-synthesis.md](../templates/council-synthesis.md)
