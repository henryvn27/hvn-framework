# Default Behavior

HVN's shipped default behavior is intentionally opinionated. It is designed to mirror Henry Van Ness's agent workflow while remaining reusable by other teams.

## Framework Defaults

Framework defaults apply unless a profile or direct user instruction overrides them:

- Use Linear as the default work-management system for non-trivial work.
- Treat HVN as cross-harness: shared core first, host adapter second.
- Route to the most specific installed skill before generic execution.
- Preserve existing repo and product conventions.
- Treat design-heavy work as a specialized workflow.
- Run authenticity preflight for high-visibility UI and polished writing.
- Keep run memory for non-trivial workstreams and handoffs.
- Use interactive question flows when ambiguity blocks the next artifact.
- Use interview-first onboarding and spec-first execution for non-trivial work.
- Use full-output enforcement when the user asks for exhaustive output.
- Keep review, QA, and ship evidence in the system of record.

## Profile Defaults

Profiles tune the framework for a specific person, team, or product. The shipped profile is `profiles/henry-van-ness.md`.

Profile behavior may specify:

- Work-management preference.
- Design bar.
- Routing preferences.
- Output strictness.
- QA expectations.
- Handoff format.

## Direct User Instructions

Direct user instructions override profile defaults. If a user opts out of Linear, HVN must map the same gates to the chosen system of record. If a user asks for a rewrite, preserve-stack behavior no longer blocks a rewrite, but the agent should still state the tradeoff.

## Missing Skills

If a named or ideal skill is not installed:

1. State that the skill is unavailable.
2. Use the closest installed skill.
3. Preserve the missing skill's intent as constraints when safe.
4. Do not invent tool results or pretend the missing skill ran.

## Linear Blocked Fallback

If Linear is unavailable:

1. State that Linear access is blocked.
2. Continue local work only when appropriate.
3. Record the Linear project, issue, comment, state, labels, and links that should be created or updated later.
4. Include the pending Linear sync in the final handoff.

## Run Memory Default

Run memory is required for non-trivial work that spans phases, agents, blockers, failed attempts, or sessions. Use `.hvn/memory/runs/` for local storage, update it after meaningful state changes, and keep it separate from specs, plans, and long-term preferences. Blind QA must not receive run memory before the blind pass.

## Interactive Question Flow Default

Question flows ask targeted clarification rounds through installable commands. Ask one question by default, use compact 2-3 question batches only for independent facts, stop once enough information exists, and capture answers in structured artifacts. Do not imply HVN controls host-native UI rendering.

## Spec-Driven Default

The spec is the primary execution artifact. Plans derive from the spec, builds implement the spec, reviews inspect against the spec, and QA verifies acceptance criteria. If scope changes, update the spec instead of silently adapting implementation.

## Cross-Harness Default

When host behavior differs, prefer the portable fallback:

1. Read shared `SKILL.md` instructions.
2. Use shared command files as logical prompts.
3. Store run memory in `.hvn/memory/runs/`.
4. Create local artifacts when connectors are unavailable.
5. Record exact Linear sync notes.
6. Consult the relevant adapter before claiming host-specific command, UI, MCP, or connector support.
