# Golden Delegation Flow

Use this as the default example for strong ORCA Framework parent-worker orchestration.

## Situation

A controller agent is coordinating a feature branch. The parent wants one worker to inspect failing CI, one worker to review PR feedback, and the parent will keep local ownership of the release-risk decision.

## Pattern

- parent pattern: fan-out / fan-in
- branch 1 owner: CI triager
- branch 2 owner: PR feedback triager
- parent owner: merge, release-risk decision, user communication

## Delegation Brief

- Controller: ORCA parent
- Executor: CI triager
- Task title: Inspect failing GitHub Actions checks on the active PR
- Selected pattern: fan-out / fan-in
- Why delegation is worth it: CI log extraction can run in parallel with PR-feedback triage
- Ingest target: `templates/result-ingestion.md`

## Subagent Context Packet

- role: CI triager
- task: inspect failing checks and extract actionable failure snippets
- owned scope: CI status, logs, and failure summary only
- linked artifacts: PR link, spec link, ship checklist
- constraints: do not edit code, do not guess at missing logs
- allowed tools or host: GitHub CLI or connector if authenticated
- expected output schema: `templates/subagent-result-packet.md`
- verification expectation: include exact failing job names and snippet evidence
- evidence links to return: failing check URLs or log references
- stop conditions: stop if auth fails or logs are incomplete
- escalation rules: escalate infra-only failures or missing auth
- approval needed: no

## Subagent Result Packet

- status: completed
- key findings: failing iOS build job, signing profile missing
- deliverables: CI triage summary
- verification run: `gh pr checks` snapshot plus failing log inspection
- evidence links: build job URL, log snippet reference
- unresolved questions: whether the profile is absent locally or only in CI secrets
- confidence: high
- blocked by: none
- recommended next step: parent should route signing fix into implementation

## Result Ingestion

- Accepted work: CI failure identified and evidenced
- Evidence confirmed: failing job name, signing error, log snippet
- Rejected or deferred items: no infra escalation yet
- Remaining risks: PR feedback may still expose other blockers
- Required approval or QA: none yet
- Recommended next step: merge CI findings with PR-feedback triage, then decide whether to fix locally or delegate implementation

## Host Mapping

| Need | Codex | Claude Code | Manual fallback |
| --- | --- | --- | --- |
| durable side session | `/side` | `/branch` | new labeled thread or artifact |
| worker orchestration | `/agent` and native threads when available | `/agents` or `/batch` when available | explicit worker brief sent to another harness |
| quick side question | inline or `/side` depending on need | `/btw` | inline clearly labeled question |
| return merge | parent ingests worker result | parent ingests worker result | parent updates `templates/result-ingestion.md` |
