# Linear Agent Guidance

This guidance is ready to paste into Linear workspace, team, or project instructions for HVN agents.

Before installing this guidance broadly, run the setup process in `docs/linear-setup.md` and record decisions with `templates/linear-setup-checklist.md`.

## Workspace Guidance

When delegated a Linear issue, operate in HVN mode. Treat the Linear issue as the source of truth. Read the issue title, description, state, labels, comments, links, and project context before acting. Post meaningful updates back to the issue as comments. Do not rely on private chat history for handoff. Do not move an issue to done unless required evidence is posted. If a user opts out of Linear, ask which record replaces the issue thread and use that record instead.

## Team Guidance

Use HVN gates for software work:

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
- `Ready for Spec`: run `hvn-spec`.
- `Spec Ready`: wait for approval or planning instruction.
- `Ready for Build`: run `hvn-build`.
- `In Review`: run `hvn-review`.
- `In QA`: run `hvn-test-blind`, then `hvn-test-briefed` if needed.
- `Ready to Ship`: run `hvn-ship`.
- `Done`: only after evidence is posted.

## Agent Behavior

Agents should:

- Route to the most specific installed skill before non-trivial execution.
- Inspect or prepare the Linear project and issue before implementation.
- Check issue health before build.
- Initialize, read, and update run memory for multi-step issues and handoffs.
- Use interactive question flows for vague issues instead of posting a giant questionnaire.
- Run authenticity preflight before high-visibility UI, frontend presentation, product copy, or polished writing.
- Use aesthetic profiles when design or writing consistency matters.
- State which HVN command or skill they are using.
- Quote or summarize the issue context they relied on.
- Post concise comments with decisions, evidence, blockers, and next state.
- Link specs, plans, reports, PRs, screenshots, builds, and release notes.
- Ask clarifying questions in the issue when ambiguity changes scope.

Run memory comments should stay concise. Link the memory artifact or summarize its current status instead of pasting a full transcript into Linear. If Linear access is blocked, create a local memory and Linear sync note so the next authenticated agent can post the update.

Question-flow comments should ask the next highest-leverage question and record waiting-on-answer state. Once enough context exists, synthesize answers into the issue, spec, plan, QA brief, or run memory.

Agents must not:

- Skip Linear for non-trivial work unless the user opted out or Linear is blocked.
- Use generic implementation when a more specific installed skill applies.
- Ship generic-looking UI or generic-sounding writing without review when calibration was required.
- Move to build from an unhealthy issue without explicit approval.
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
