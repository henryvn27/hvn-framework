# Next-Step Guidance

Next-step guidance is the short phase-exit message ORCA-HVN emits after a major stage completes. It helps the user move forward without turning every phase into a tutorial.

## When It Appears

Emit next-step guidance after:

- ideation or idea evaluation
- onboarding
- spec creation
- milestone planning
- implementation
- QA
- regression follow-up
- review
- shipping or handoff

Also emit it when a run pauses at a checkpoint or blocker and the user needs a clear next action.
An adaptive guidance nudge may appear only when it materially helps and can stay lightweight.

## When It Should Stay Silent

Do not emit guidance when:

- the next action is already being executed in the same response
- the user explicitly asked for no explanation or no next steps
- the phase did not actually complete
- the message would repeat guidance already given in the last turn
- a safety, approval, or scope blocker needs a direct question instead

## Output Shape

Every guidance message should answer:

- what just happened
- what matters now
- the recommended next action
- one optional alternate action
- what done means for the next phase

Prefer one clear default next step, one optional alternate path, and one sentence explaining why.
If the default next action is obvious, do not pad it with optional complexity.
If coaching would be more distracting than helpful, suppress it.

## Output Modes

- `concise`: one to three short lines; best when the user is technical, moving fast, or has already seen the workflow.
- `standard`: short bullets with a default action, alternate path, and done condition.
- `advanced`: terse, assumption-friendly guidance with quick branching choices and artifact references.

## Intent Styles

- `just tell me what to do`: give the default next action first and skip background.
- `explain briefly`: include one sentence of rationale.
- `show options`: include the default path plus one or two alternatives with tradeoffs.

Do not force the user to declare expertise. Infer from context when safe, but respect explicit preferences.

## Relationship To Phase Completion

Phase completion creates a transition point. Next-step guidance should make that transition inspectable:

- completed phase
- evidence or artifact produced
- next recommended command or human action
- blocker or approval need, if any

The guidance should not replace run memory, traces, approval gates, or handoff artifacts. It is the readable bridge between them.

In controller workflows, next-step guidance should also help answer:

- should the controller continue directly
- should the controller delegate
- what should the executor be told
- what artifact should come back next

In ideation workflows, next-step guidance should also help answer:

- does this idea deserve more work
- should the user run research, validation, or stop
- has the idea earned a product spec yet

## Missing Integrations

If the recommended next step depends on a missing external tool, the guidance should say:

- what integration is missing
- why it matters for the next step
- the shortest setup path
- the available fallback

Use `orca-check-setup` or `orca-setup` instead of leaving the user at a dead end.
When next-step guidance mentions integrations, it should mention only the ones relevant to the current workflow and current confidence. Do not emit vendor-catalog suggestions.
