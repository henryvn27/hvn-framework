# orca-explain

## Purpose

Start a dedicated explanation session for the current work so the user can ask what is happening, why ORCA chose this path, and what to do next without turning the explainer into the executor.
When the harness supports a real side chat, `orca-explain` should prefer opening there.

## When To Use

Use when the user asks what is going on, why ORCA made a decision, what artifacts matter, what is blocked, or wants an explanation thread that stays interactive for follow-up questions.

## Required Inputs

- Current task, run, goal, or work item identity

## Optional Inputs

- Current harness
- Specific focus such as "what changed", "why this workflow", or "what should I ask next"
- Current runtime status, receipts, checkpoints, or inspection artifacts

## Workflow

1. Frame the session as explanation mode, not execution mode.
2. Summarize:
   - what ORCA thinks is happening
   - why it chose the current workflow or host path
   - which artifacts or commands matter
   - what is done, blocked, assumed, or still unclear
   - what the user can ask next
3. Stay interactive for follow-up questions inside the explanation session.
4. If the user pivots from "explain" to "do", produce a handoff back to the main execution thread instead of doing the work here.
5. When durable preference or technical-level evidence is strong, update the user-global explain profile and append a learning signal.

## Outputs And Artifacts

- `templates/explanation-session.md`
- Optional handoff section inside the explanation session artifact
- Optional update to the user-global explain profile at `$HOME/.orca-hvn/state/explain/user-technicality-profile.md`
- Optional append-only learning signal at `$HOME/.orca-hvn/state/explain/learning-signals.jsonl`

## Behavior Rules

- Treat side chat as a portable ORCA concept first.
- Prefer a durable side thread, side pane, or popout when the active harness clearly supports one.
- Use host-native side-thread behavior when clearly supported by the active host.
- If the host does not expose a reliable side-thread surface, keep the session separate by framing and artifact, not by pretending the host has a UI primitive it does not.
- If the user only needs one short question answered and the harness exposes a `/btw`-style primitive, use that instead of forcing a full explanation session.
- The explanation session is non-mutating by default.
- The explanation session may emit a structured handoff such as "return to the main thread and run `orca-build` with this scope".

## Explain Learning Rules

- Default explain mode: `manual_only`
- Supported modes:
  - `manual_only`
  - `suggest_when_helpful`
  - `predictive_auto_explain`
- `/explain` usage is positive evidence that more explanation may be wanted.
- Repeated "keep it concise", "no explanation", or equivalent is counter-evidence.
- Explicit user preference overrides inference.
- Predictive explanation may only start automatically in low-risk coordination moments, not during destructive, security-sensitive, or release-critical steps without explicit user request.
- If the global explain-state path is unavailable, fail closed and continue with non-persistent inference.

## Failure Cases

- If the current work item is unclear, explain the ambiguity instead of inventing state.
- If key artifacts are missing, say which evidence is missing.
- If the user asks the explainer to execute, create a handoff instead of mutating the repo in the explanation session.

## Related Commands And Skills

- Commands: `orca-help`, `orca-status`, `orca-inspect`, `orca-next`, `orca-learning`, `orca-review`, `orca-design`, `orca-research`
- Skills: `orca-adaptive-guidance`, `orca-runtime-adaptation`, `orca-shared-state`
