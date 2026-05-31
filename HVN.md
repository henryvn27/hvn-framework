# HVN Operating Manual

HVN is the master operating policy for rigorous agentic software development. It defines how agents onboard, specify, plan, build, review, test, and ship work through a durable coordination layer.

HVN is Linear-first by default. Linear is the preferred system of record for issue intake, scope clarification, status transitions, agent handoffs, implementation plans, QA runs, review findings, ship readiness, and retrospectives. If the user opts out of Linear, HVN maps the same gates and artifacts to the user's chosen system of record.

HVN also routes work by installed skill. The default policy is most-specific-skill wins. For high-visibility UI and polished writing, routing triggers authenticity preflight before execution. The shipped profile is `profiles/henry-van-ness.md`; the framework defaults are in `HVN.defaults.md`.

## Principles

1. **System of record first:** every meaningful action should be recoverable from Linear or the declared opt-out record.
2. **Spec first:** implementation follows a written contract.
3. **Route first:** select the narrowest installed skill that matches the task.
4. **Preserve first:** keep existing stack and conventions unless redesign is requested.
5. **Evidence over confidence:** agents verify behavior rather than relying on plausible reasoning.
6. **Calibrate visible work:** UI and writing that shape trust need authenticity preflight.
7. **Context is a tool:** context is disclosed deliberately, especially during QA.
8. **Fresh eyes matter:** blind first-look testing is protected from hidden project knowledge.
9. **Small gates beat big surprises:** review, design, security, and QA checks happen before release.
10. **Memory is maintained:** every non-trivial run keeps compact state that a fresh agent can use immediately.
11. **Artifacts are durable:** every important decision should leave a useful written artifact or issue comment.

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
- **Authenticity preflight mode:** calibrate UI, design, frontend presentation, product copy, and polished writing against generic failure modes.
- **Run memory mode:** preserve compact continuation context for the issue or workstream.
- **Issue health mode:** decide whether a Linear issue is ready for the next gate.
- **Aesthetic profile mode:** select or update visual and writing taste direction.
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
- Authenticity calibration for high-visibility UI or polished writing
- Run memory for non-trivial workstreams
- Linear issue health report before build gates
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
3. Issue health is checked before agent work.
4. Run memory is initialized when missing.
5. Run memory is read before discovery, spec, planning, build, review, briefed QA, ship, and retro.
6. Onboard or discover agent clarifies ambiguity and updates memory with durable findings.
7. Aesthetic profile is selected when design or writing matters.
8. Spec is generated and attached or summarized back to the issue, then linked from memory.
9. Plan is posted to the issue and approval status is reflected in memory.
10. Human approves the plan when required.
11. Build agent executes approved scope with the selected skill and updates memory after meaningful phases.
12. Review agent comments findings, checks skill fit, emits regression candidates, and updates memory.
13. Blind QA agent runs first-look test without memory input.
14. Blind QA results are saved, then summarized into memory.
15. Context briefer creates a minimal second-pass brief.
16. Guided QA reruns with limited context.
17. Delta report compares blind and briefed outcomes and updates memory with product insight.
18. Security, review, and regression packs run as needed.
19. Ship readiness checklist is posted and memory is finalized or archived.
20. Issue moves to done only with evidence.

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

## Authenticity Policy

Run `hvn-authenticity-preflight` before high-visibility UI, frontend presentation, landing pages, dashboards, redesigns, UX copy, product copy, README work, docs, essays, outreach, or brand writing. Keep it short and targeted. The output should name generic patterns to avoid, project-specific direction, concrete details to include, and review criteria. Do not use deceptive framing or fake personal anecdotes.

## Run Memory Policy

Use `hvn-run-memory` to preserve essential state between agent sessions. Initialize it with `hvn-memory-init`, resume from it with `hvn-memory-read`, and preserve changes with `hvn-memory-update`. Update it after scope changes, phase completion, failed attempts, review, QA, blockers, handoffs, and ship preparation. Store local memory under `.hvn/memory/runs/` and archive completed runs under `.hvn/memory/runs/archive/`. Do not feed run memory into blind QA.

## Issue Health Policy

Use `hvn-linear-health` before implementation. If scope, acceptance criteria, environment, owner, reviewer, QA plan, or blocker status is unclear, route back to onboarding or spec before build.

## Delta And Regression Policy

Use `hvn-delta-report` after blind and briefed QA to identify first-look clarity gaps. Use `hvn-regression-pack` to turn bugs, QA findings, and review blockers into reusable retest scenarios before ship.

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
