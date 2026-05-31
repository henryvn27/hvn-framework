# HVN Operating Manual

HVN is the master operating policy for rigorous agentic software development. It defines how agents onboard, specify, plan, build, review, test, and ship work through a durable coordination layer.

HVN is Linear-first by default. Linear is the preferred system of record for issue intake, scope clarification, status transitions, agent handoffs, implementation plans, QA runs, review findings, ship readiness, and retrospectives. If the user opts out of Linear, HVN maps the same gates and artifacts to the user's chosen system of record.

HVN also routes work by installed skill. The default policy is most-specific-skill wins. The shipped profile is `profiles/henry-van-ness.md`; the framework defaults are in `HVN.defaults.md`.

## Principles

1. **System of record first:** every meaningful action should be recoverable from Linear or the declared opt-out record.
2. **Spec first:** implementation follows a written contract.
3. **Route first:** select the narrowest installed skill that matches the task.
4. **Preserve first:** keep existing stack and conventions unless redesign is requested.
5. **Evidence over confidence:** agents verify behavior rather than relying on plausible reasoning.
6. **Context is a tool:** context is disclosed deliberately, especially during QA.
7. **Fresh eyes matter:** blind first-look testing is protected from hidden project knowledge.
8. **Small gates beat big surprises:** review, design, security, and QA checks happen before release.
9. **Artifacts are durable:** every important decision should leave a useful written artifact or issue comment.

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
- **Linear setup mode:** configure or validate Linear states, labels, guidance, permissions, smoke-test issue, and opt-out mapping.
- **Routing mode:** select installed skills, Linear handling, preserve-stack posture, and full-output behavior.
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

- Routing decision for non-trivial or skill-sensitive work
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

Before relying on Linear-first execution, run setup:

1. Choose workspace, team, or project scope.
2. Map states to HVN gates.
3. Configure or document labels.
4. Install agent guidance.
5. Decide whether agents may change states or only recommend transitions.
6. Run a smoke-test issue.
7. Record opt-out rules.

Then use the standard lifecycle:

1. Route the task and check Linear project or issue context.
2. Issue enters inbox or triage.
3. Onboard or discover agent clarifies ambiguity.
4. Spec is generated and attached or summarized back to the issue.
5. Plan is posted to the issue.
6. Human approves the plan when required.
7. Build agent executes approved scope with the selected skill.
8. Review agent comments findings and checks skill fit.
9. Blind QA agent runs first-look test.
10. Context briefer creates a minimal second-pass brief.
11. Guided QA reruns with limited context.
12. Security, review, and regression passes happen as needed.
13. Ship readiness checklist is posted.
14. Issue moves to done only with evidence.

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

## Skill Routing Policy

Use `hvn-router` before non-trivial work. Choose the narrowest installed skill matching the task. For frontend and design-heavy work, route to design/frontend skills. For existing products, prefer improve-in-place behavior. For full-output requests, enable `hvn-full-output`. If the ideal skill is missing, state the fallback and preserve the missing skill's intent as constraints when safe.

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
