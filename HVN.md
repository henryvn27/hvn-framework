# HVN Operating Manual

HVN is the master operating policy for rigorous agentic software development. It defines how agents onboard, specify, plan, build, review, test, and ship work through a durable coordination layer.

HVN is Linear-first by default. Linear is the preferred system of record for issue intake, scope clarification, status transitions, agent handoffs, implementation plans, QA runs, review findings, ship readiness, and retrospectives. If the user opts out of Linear, HVN maps the same gates and artifacts to the user's chosen system of record.

## Principles

1. **System of record first:** every meaningful action should be recoverable from Linear or the declared opt-out record.
2. **Spec first:** implementation follows a written contract.
3. **Evidence over confidence:** agents verify behavior rather than relying on plausible reasoning.
4. **Context is a tool:** context is disclosed deliberately, especially during QA.
5. **Fresh eyes matter:** blind first-look testing is protected from hidden project knowledge.
6. **Small gates beat big surprises:** review, design, security, and QA checks happen before release.
7. **Artifacts are durable:** every important decision should leave a useful written artifact or issue comment.

## Coordination Modes

- **Linear-first mode:** work starts from a Linear issue or project. Agents read issue context and post specs, plans, reports, and ship checks back to the issue.
- **Opt-out mode:** the user chooses another system of record. Agents preserve the same gates in GitHub Issues, docs, local files, PR comments, or another tracker.

Do not force Linear when the user explicitly opts out. Do not silently drop HVN gates when Linear is unavailable.

## Linear Mapping

- Linear issue = unit of work
- Linear project = initiative or epic
- Linear state = workflow gate
- Linear label = routing, risk, platform, or QA signal
- Linear comment = status update, spec, plan, QA report, review finding, or ship checklist
- Linear linked artifact = durable spec, plan, report, PR, screenshot, build, or release note
- Linear agent delegation = trigger for HVN command or mode execution

## Workflow Modes

- **Linear intake mode:** normalize issue context, labels, and next gate.
- **Onboarding mode:** collect intent through adaptive questions and produce an intake summary.
- **Discovery mode:** inspect code, product shape, dependencies, constraints, and risks.
- **Research mode:** gather evidence when the answer is not already known.
- **Specification mode:** convert issue context into acceptance criteria and non-goals.
- **Planning mode:** sequence implementation into verifiable phases and post an approval-ready plan.
- **Build mode:** implement the approved plan with focused edits and local verification.
- **Review mode:** inspect for bugs, regressions, maintainability, accessibility, and release risk.
- **Blind QA mode:** evaluate the product with no hidden context.
- **Briefed QA mode:** retest with a bounded context packet.
- **Ship mode:** prepare ship readiness, release notes, and handoff.
- **Retro mode:** record what changed, what failed, and how the system should improve.

## Required Artifacts

- Intake summary or Linear intake comment
- Discovery notes when code or constraints are inspected
- Research brief when outside evidence informs a decision
- Spec or Linear spec comment
- Implementation plan or Linear plan comment
- Review report or Linear review comment
- QA report or Linear QA comment
- Ship checklist or Linear ship comment
- Retrospective for completed larger efforts

## Linear Lifecycle

1. Issue enters inbox or triage.
2. Onboard or discover agent clarifies ambiguity.
3. Spec is generated and attached or summarized back to the issue.
4. Plan is posted to the issue.
5. Human approves the plan when required.
6. Build agent executes approved scope.
7. Review agent comments findings.
8. Blind QA agent runs first-look test.
9. Context briefer creates a minimal second-pass brief.
10. Guided QA reruns with limited context.
11. Security, review, and regression passes happen as needed.
12. Ship readiness checklist is posted.
13. Issue moves to done only with evidence.

## Subagent Policy

Use subagents when independence improves quality:

- Onboarding subagents interview without premature implementation bias.
- Planner subagents turn issue context into approval-ready plans.
- Review subagents inspect the diff without defending the implementation.
- Blind QA subagents receive only issue ID, platform, launch instructions, and optional one-sentence mission.
- Context briefer subagents prepare bounded packets for retesting.
- Release subagents validate done-state evidence.

Subagents must state what context they received. They must not imply they observed UI, logs, tests, screenshots, Linear comments, or linked artifacts unless they actually did.

## Verification Policy

Every build phase needs verification proportional to risk. Prefer automated tests, linting, validation scripts, screenshots, simulator runs, browser runs, and direct artifact checks. If verification cannot run, record the reason and remaining risk in Linear or the opt-out record.

## QA Philosophy

HVN separates QA passes by context:

- **Blind pass:** no spec, no implementation notes, no intended user journey unless it is visible in the product or included as a one-sentence mission.
- **Briefed pass:** receives a bounded context packet with selected goals and constraints.
- **Informed pass:** may inspect implementation, issue history, and acceptance criteria.

The blind pass is never retroactively edited after context is disclosed. Later findings are recorded as separate passes in the same issue or opt-out artifact trail.

## Onboarding

Onboarding is an adaptive subagent interview. In Linear-first mode, the issue description and comments are the starting prompt. Ask high-leverage questions about users, jobs, constraints, success signals, platform, data, risks, and non-goals. Stop when the next question is unlikely to change the first useful spec. Output unresolved questions instead of forcing certainty.

## Definition Of Done

Work is done when:

- The spec's acceptance criteria are satisfied or explicitly revised.
- Required artifacts are present in Linear or the opt-out system of record.
- Tests or validation appropriate to the risk have run.
- Review findings are resolved or documented.
- QA mode and results are documented.
- Shipping instructions and rollback considerations are clear.
- The issue or work item contains evidence for the done transition.
- No hidden placeholders or unsupported claims remain.
