# Experience Adaptation

HVN adapts next-step guidance to the user and situation without requiring a formal expertise setting.

## Signals

Use lightweight signals:

- explicit user preference
- command style and vocabulary
- whether the user asks for options or direct action
- whether the repo phase has high risk or many blockers
- whether the user is operating through a nontechnical workflow artifact

When signals conflict, choose the safer readable mode: concise but with enough context to act.

## Profiles

### Beginner

- more context
- fewer choices
- plain phrasing
- explicit done condition
- no childish language

### Intermediate

- default path plus one alternate
- short rationale
- command or artifact references when useful

### Advanced

- terse output
- assumptions allowed when visible
- quick branching choices
- artifact links and verification contract
- no recap unless it changes the next decision

## Overrides

Users can override guidance with phrases such as:

- "just tell me what to do"
- "briefly explain"
- "show options"
- "advanced mode"
- "keep it concise"
- "no next-step guidance"

Persist the preference only when the user explicitly asks for a durable preference.
