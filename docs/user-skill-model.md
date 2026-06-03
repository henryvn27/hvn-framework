# User Skill Model

ORCA Framework may keep an internal support model of what the user appears to know.

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
- ORCA Framework docs literacy
- explanation-depth preference
- jargon tolerance
- preference for direct answer versus stepwise reasoning
- preference for more questions up front versus fewer questions plus stronger assumptions
- preferred involvement level during execution
- preferred checkpoint cadence
- appetite for goal mode or unattended background execution

## How It Learns

Infer from behavior such as:

- repeated successful use of advanced commands
- clear or unclear context handoff
- whether the user asks for beginner explanations
- whether repeated clarification is needed
- whether the user already knows a tool or workflow
- repeated confusion around the same framework surface
- repeated `/explain` use
- repeated "keep it concise" or "don't explain" signals
- whether the user asks follow-up why/how questions before wanting action
- whether onboarding answers indicate a durable preference for guided or terse setup

## Privacy And Tone Rule

This model is internal.

Do not expose it as:

- a score
- a ranking
- a capability label shown to the user
- a public profile that feels evaluative

Use it only to decide how much help to surface and when silence is better.
It should improve the local instance experience first and should not silently rewrite global defaults for everyone else.

For explanation mode, ORCA may persist user-global support state at `$HOME/.orca-framework/state/explain/` when the user explicitly wants durable behavior or when repeated evidence strongly supports a stable local preference.
