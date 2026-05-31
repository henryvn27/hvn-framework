# Linear Workflow

HVN is designed to run software work through Linear by default. Linear is the preferred coordination layer, source of work, and durable record for agent activity. If the user opts out, use the same HVN gates with another declared system of record.

## Core Mapping

- **Linear issue:** unit of work
- **Linear project:** initiative, epic, or coordinated product effort
- **Linear state:** workflow gate
- **Linear label:** routing, risk, platform, or QA signal
- **Linear assignee or delegate:** current owner or agent role
- **Linear comment:** status update, plan, review finding, QA report, or ship checklist
- **Linked artifact:** spec, plan, report, screenshot, branch, pull request, build, or release note

HVN works best when agents stay close to the source of work. In Henry's workflow, that source is Linear. Agents should read the issue, update the issue, and keep handoffs visible in the issue thread. In opt-out mode, replace the issue thread with the chosen record and keep the same discipline.

## Standard Lifecycle

0. Linear setup maps states, labels, guidance, permissions, and opt-out rules.
1. Issue enters inbox or triage.
2. Onboard or discover agent clarifies ambiguity.
3. Spec is generated and attached or summarized back to the issue.
4. Plan is posted to the issue.
5. Approval gates decide whether build can proceed or needs explicit human approval.
6. Build agent executes approved scope.
7. Trace and workflow metrics artifacts make the run inspectable.
8. Blind QA agent runs first-look test.
9. Context briefer creates a minimal second-pass brief.
10. Guided QA reruns with limited context.
11. Strong findings can generate reusable regression tasks.
12. Security, benchmark, eval, and regression passes run as needed.
13. Ship readiness checklist is posted.
14. Issue moves to done only with evidence.

## Agent Update Rule

Every meaningful agent pass should leave a Linear comment with:

- What context was read
- What changed or was tested
- What evidence was produced
- What is blocked
- Which state should come next

When a run is meaningful, risky, or confusing, also link a trace artifact so the next maintainer can reconstruct what happened.

## Approval Rule

Human approval is required before moving from `Spec Ready` to build when the issue changes product behavior, data handling, security posture, billing, release process, or public user experience.

Use `hvn-approve` to record that decision. Do not rely on vague "looks good" chat approval for risky work.

## Opt-Out Rule

The user may opt out of Linear. When that happens, ask where to store the durable record and map Linear concepts to the selected tool. Do not continue non-trivial work with private chat as the only record.
