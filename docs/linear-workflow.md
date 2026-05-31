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
3. Issue health is checked before agent work.
4. Run memory is initialized or updated.
5. Onboard or discover agent clarifies ambiguity.
6. Aesthetic profile is selected when design or writing matters.
7. Spec is generated and attached or summarized back to the issue.
8. Plan is posted to the issue.
9. Calibration findings are posted for UI, design, frontend presentation, product copy, or polished writing.
10. Human approves the plan.
11. Build agent executes approved scope.
12. Review agent comments findings, checks calibration fit, and identifies regression candidates.
13. Blind QA agent runs first-look test.
14. Context briefer creates a minimal second-pass brief.
15. Guided QA reruns with limited context.
16. Delta report compares blind and briefed outcomes.
17. Security, review, and regression packs run as needed.
18. Ship readiness checklist is posted.
19. Issue moves to done only with evidence.

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
