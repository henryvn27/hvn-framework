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
1. Routing checks the matching Linear project or issue before execution.
2. Issue enters inbox or triage.
3. Onboard or discover agent clarifies ambiguity.
4. Spec is generated and attached or summarized back to the issue.
5. Plan is posted to the issue.
6. Calibration findings are posted for UI, design, frontend presentation, product copy, or polished writing.
7. Human approves the plan.
8. Build agent executes approved scope.
9. Review agent comments findings and checks calibration fit.
10. Blind QA agent runs first-look test.
11. Context briefer creates a minimal second-pass brief.
12. Guided QA reruns with limited context.
13. Security, review, and regression passes run as needed.
14. Ship readiness checklist is posted.
15. Issue moves to done only with evidence.

## Agent Update Rule

Every meaningful agent pass should leave a Linear comment with:

- What context was read
- What changed or was tested
- What evidence was produced
- What is blocked
- Which state should come next

## Approval Rule

Human approval is required before moving from `Spec Ready` to build when the issue changes product behavior, data handling, security posture, billing, release process, or public user experience.

## Opt-Out Rule

The user may opt out of Linear. When that happens, ask where to store the durable record and map Linear concepts to the selected tool. Do not continue non-trivial work with private chat as the only record.
