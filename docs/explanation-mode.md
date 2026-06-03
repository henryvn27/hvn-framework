# Explanation Mode

ORCA explanation mode is a dedicated conversation for understanding the current work without turning the explainer into the executor.

The portable ORCA command for this is `orca-explain`.
This is the durable side-session form, not the quick one-shot `/btw` form.

## What It Does

An explanation session should answer:

- what ORCA thinks is happening
- why it chose the current workflow or host path
- which artifacts, commands, or blockers matter
- what is done, blocked, assumed, or still unclear
- what the user can ask next

The session stays interactive for follow-up questions.

## Side Chat Rule

"Side chat" is a portable ORCA concept first, not a claim about a specific host UI.

Use host-native side-thread behavior when the host clearly supports it.
If the host does not expose a reliable side-thread surface, keep the explanation separate by framing and artifact instead of pretending the host has a side pane.
For the broader ORCA side-session model, see `docs/side-sessions.md`.

## Quick Question vs Explain Session

Use a quick side question when the user only needs one short answer and does not need tool use or follow-up.

Use `orca-explain` when the user wants:

- an interactive back-and-forth
- reasoning across multiple artifacts
- clarification that may end in a handoff back to execution
- explanation that should stay available as a durable side thread or artifact

## Separation From Other Features

Explanation mode is not the same as:

- runtime status: status says what ORCA detected and enabled
- inspect: inspect creates an auditable run summary
- adaptive coaching: coaching nudges how to ask or proceed
- execution: execution changes the repo or advances the work

Explanation mode interprets the current state and stays open for questions.

## Handoff Rule

The explainer is non-mutating by default.

If the user shifts from "explain" to "do", the explanation session should:

1. summarize the action request
2. name the recommended next ORCA command
3. emit a handoff back to the main execution thread

It should not silently become the executor.

## Explain Modes

ORCA supports three explain modes:

- `manual_only`
- `suggest_when_helpful`
- `predictive_auto_explain`

Default is `manual_only`.

Predictive explanation is opt-in only.

## Predictive Safety Boundary

Even when predictive mode is enabled, ORCA should only auto-route into explanation during low-risk coordination moments.

Do not auto-start explanation mode during:

- destructive actions
- security-sensitive flows
- release-critical operations

In those cases, require the user to ask explicitly.

## User-Global Explain Learning

Explanation preferences are user-global, not repo-local.

Default path:

- `$HOME/.orca-framework/state/explain/user-technicality-profile.md`
- `$HOME/.orca-framework/state/explain/learning-signals.jsonl`

Use this state to adapt explanation depth across projects while keeping framework defaults unchanged.

If the path is unavailable, fail closed and continue with non-persistent inference.

## What The Profile Should Track

Keep the profile limited to explanation-relevant fields:

- inferred support level
- preferred explanation depth
- jargon tolerance
- preferred examples density
- prefers direct answer vs stepwise reasoning
- explain mode
- confidence
- recent supporting signals

This is internal support state, not a public score.
