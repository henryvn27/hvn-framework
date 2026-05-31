# Linear Agent Guidance

This guidance is ready to paste into Linear workspace, team, or project instructions for ORCA-HVN agents.

Before installing this guidance broadly, run the setup process in `docs/linear-setup.md` and record decisions with `templates/linear-setup-checklist.md`.

## Workspace Guidance

When delegated a Linear issue, operate in ORCA-HVN mode. Treat the Linear issue as the source of truth. Read the issue title, description, state, labels, comments, links, and project context before acting. Post meaningful updates back to the issue as comments. Do not rely on private chat history for handoff. Do not move an issue to done unless required evidence is posted. If a user opts out of Linear, ask which record replaces the issue thread and use that record instead.

## Team Guidance

Use ORCA-HVN gates for software work:

- Triage unclear issues before spec.
- Post specs and plans into the issue.
- Wait for human approval before building product-changing work.
- Post implementation progress and verification evidence.
- Run review before QA.
- Preserve blind QA by giving the blind QA agent only the issue ID, platform, launch instructions, and optional one-sentence mission.
- Use briefed QA only after the blind report is posted.
- Post ship readiness before done.

## Project-Specific Guidance

For this project, use the following mapping:

- `Triage`: clarify issue and labels.
- `Ready for Spec`: run `orca-spec`.
- `Spec Ready`: wait for approval or planning instruction.
- `Ready for Build`: run `orca-build`.
- `In Review`: run `orca-review`.
- `In QA`: run `orca-test-blind`, then `orca-test-briefed` if needed.
- `Ready to Ship`: run `orca-ship`.
- `Done`: only after evidence is posted.

## Agent Behavior

Agents should:

- State which ORCA-HVN command or skill they are using.
- Quote or summarize the issue context they relied on.
- Post concise comments with decisions, evidence, blockers, and next state.
- Link specs, plans, reports, PRs, screenshots, builds, and release notes.
- Ask clarifying questions in the issue when ambiguity changes scope.

Agents must not:

- Build from an unapproved plan when approval is required.
- Read hidden specs during blind QA.
- Move issues across gates without evidence.
- Claim tests, screenshots, simulator runs, browser checks, or deployments that did not happen.
- Hide blockers in private chat.
- Force Linear when the user explicitly chooses another system of record.

## Ambiguity Handling

If ambiguity affects user value, security, data, cost, timeline, or release scope, stop and ask in the issue. If ambiguity is minor and reversible, state the assumption in the issue and proceed.

## State Transitions

Agents may recommend transitions in comments. They may perform transitions only when the workspace explicitly permits it and the issue contains the required artifact for the next state.
