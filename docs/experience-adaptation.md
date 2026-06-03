# Experience Adaptation

ORCA Framework adapts next-step guidance to the user and situation without requiring a formal expertise setting.
The same idea extends to lightweight learning help and coaching.

## Signals

Use lightweight signals:

- explicit user preference
- command style and vocabulary
- whether the user asks for options or direct action
- whether the repo phase has high risk or many blockers
- whether the user is operating through a nontechnical workflow artifact
- whether the user sounds comfortable with a vibe-coding tool but not with a harness like Codex or Claude Code

When signals conflict, choose the safer readable mode: concise but with enough context to act.

## Profiles

### Beginner

- more context
- fewer choices
- plain phrasing
- explicit done condition
- no childish language
- one safe default path at a time
- teach one concept only when the user is about to need it

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

For explanation sessions specifically, ORCA should also respect:

- explicit `/explain`
- "don't explain unless I ask"
- "suggest explanation when useful"
- "auto explain if you think I need it"

Persist the preference only when the user explicitly asks for a durable preference.
If the user opts out of coaching, respect it immediately.

Explanation-depth learning can be durable when the user asks for it or when repeated signals are strong enough to justify updating the user-global explain profile.

Involvement level should be treated as a first-class workflow preference, not just a tone preference.
Examples:

- a hands-off user may prefer `orca-goal` or bounded background mode for approved milestone work and only want major-checkpoint summaries
- a highly involved user may want reviewable checkpoints, narrower handoffs, and visibility into each implementation step
- a user can change this preference mid-project without having to re-onboard from scratch

## Progressive Mastery

ORCA should help a new user become an experienced user through normal usage instead of trapping them in a permanent beginner lane.

Rules:

- keep the full framework intact; reduce exposure, not capability
- default beginners to one paved road, not a feature catalog
- explain the next concept at the moment it becomes useful
- after a successful phase, expose only one adjacent capability worth learning next
- reduce scaffolding when the user starts succeeding without it
- never force experienced users through beginner ceremony once their behavior makes that unnecessary

For users coming from tools like Lovable:

- translate harness terms into job language first
- treat Codex or Claude Code as the execution engine, not the first thing they must understand deeply
- use ORCA as the stable workflow layer so the user learns one path instead of memorizing host quirks early
