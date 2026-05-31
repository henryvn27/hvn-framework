# Linear Agent Model

HVN models agents as role-specific collaborators operating inside Linear by default. In opt-out mode, the same roles operate against the chosen tracker or artifact set.

## Agent Roles

- **Triage agent:** cleans issue scope, labels, platform, priority, and missing context.
- **Onboard agent:** asks adaptive clarification questions in the issue thread.
- **Spec agent:** turns issue context into a structured spec.
- **Planner agent:** posts an implementation plan and verification gates.
- **Build agent:** executes approved work and posts progress updates.
- **Review agent:** inspects changes and comments findings.
- **Blind QA agent:** tests with minimal context and posts first-look findings.
- **Context briefer:** prepares a bounded second-pass QA packet.
- **Guided QA agent:** retests with disclosed context.
- **Release agent:** checks ship readiness before done.

## Delegation

Delegating an issue to an agent should be treated as a command trigger. The issue state, label, and latest comment determine the HVN mode.

Examples:

- Label `needs-spec` triggers `hvn-spec`.
- State `Ready for Build` triggers `hvn-build` only after plan approval.
- State `In QA` with label `blind-qa` triggers `hvn-test-blind`.
- State `Ready to Ship` triggers `hvn-ship`.

## Handoff Contract

An agent handoff should include:

- Current issue ID and title
- Current state and labels
- Artifact links or summaries
- Last completed HVN command
- Next recommended HVN command
- Blockers and approval needs

Handoffs belong in Linear comments so the next agent does not depend on private chat history. In opt-out mode, handoffs belong in the declared record: a GitHub issue comment, project doc, PR comment, or local artifact.
