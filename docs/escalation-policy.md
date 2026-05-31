# Escalation Policy

ORCA should try to solve the problem before escalating it to the user.

## Default Rule

Escalation is not the default control loop.

The default is:

1. inspect the available evidence
2. make the strongest safe assumption
3. take the next useful action
4. escalate only when the remaining uncertainty, risk, or missing access actually blocks good progress

## Good Reasons To Escalate

Escalate when:

- approval is required by policy or risk level
- credentials, permissions, or external access are blocked
- the choice would materially change scope, product intent, or irreversible behavior
- the evidence is too weak to make a safe assumption
- repeated attempts have failed and the same blocker remains
- the user explicitly asked to decide personally

## Bad Reasons To Escalate

Do not escalate just because:

- there is some ambiguity but one option is clearly the best working assumption
- gathering local evidence takes effort
- the framework could continue with a bounded fallback
- the agent wants reassurance before doing normal work
- a question would be easier than inspection, implementation, or verification

## What ORCA Should Do First

Before escalating, ORCA should prefer to:

- inspect the repo, docs, vault, and artifacts already available
- follow the current paved road or default workflow
- use receipts, lineage, and state to infer the next move
- choose the safest bounded fallback path
- narrow the problem and complete the local portion of the work
- summarize the blocker only after useful work has already been done

## Escalation Quality Bar

When escalation is necessary, it should be:

- late rather than early
- narrow rather than broad
- concrete rather than open-ended
- tied to a specific blocker, decision, or approval
- paired with what ORCA already tried
- paired with the recommended next move once the blocker is cleared

## Preferred Wording

Good escalation sounds like:

- `I completed the local setup and isolated the blocker. I need approval to continue with X.`
- `I narrowed this to two plausible paths. Path A matches the current evidence and is my recommendation. I need your decision only because Y is irreversible.`
- `I verified everything available locally. The next step is blocked on missing credentials for Z.`

Bad escalation sounds like:

- `What do you want me to do?`
- `There are many options here.`
- `I need more clarity before I can continue.`

## Related Docs

- [framework-principles.md](framework-principles.md)
- [onboarding.md](onboarding.md)
- [next-step-guidance.md](next-step-guidance.md)
- [workflow.md](workflow.md)
