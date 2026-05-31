# User Skill Model

ORCA-HVN may keep an internal support model of what the user appears to know.

This model exists to improve help quality, not to score the user.

## What It Tracks

Possible internal dimensions:

- prompting skill
- context engineering skill
- debugging skill
- AI-development workflow skill
- tool familiarity
- stack familiarity
- planning and spec-writing skill
- repo navigation skill
- integration setup familiarity
- ORCA-HVN docs literacy

## How It Learns

Infer from behavior such as:

- repeated successful use of advanced commands
- clear or unclear context handoff
- whether the user asks for beginner explanations
- whether repeated clarification is needed
- whether the user already knows a tool or workflow
- repeated confusion around the same framework surface

## Privacy And Tone Rule

This model is internal.

Do not expose it as:

- a score
- a ranking
- a capability label shown to the user
- a public profile that feels evaluative

Use it only to decide how much help to surface and when silence is better.
