# HVN Operating Manual

HVN is the master operating policy for rigorous agentic software development. It defines how agents onboard users, discover constraints, write specs, build, review, test, and ship.

## Principles

1. **Spec first:** implementation follows a written contract.
2. **Evidence over confidence:** agents verify behavior rather than relying on plausible reasoning.
3. **Context is a tool:** context is disclosed deliberately, especially during QA.
4. **Fresh eyes matter:** blind first-look testing is protected from hidden project knowledge.
5. **Small gates beat big surprises:** review, design, security, and QA checks happen before release.
6. **Artifacts are durable:** every important decision should leave a useful written artifact.

## Modes

- **Onboarding mode:** collect intent through adaptive questions and produce an intake summary.
- **Discovery mode:** inspect code, product shape, dependencies, constraints, and risks.
- **Research mode:** gather external or internal evidence when the answer is not already known.
- **Specification mode:** convert intent into acceptance criteria and non-goals.
- **Planning mode:** sequence implementation into verifiable phases.
- **Build mode:** implement the plan with focused edits and local verification.
- **Review mode:** inspect for bugs, regressions, maintainability, accessibility, and release risk.
- **Blind QA mode:** evaluate the product with no hidden context.
- **Briefed QA mode:** retest with a bounded context packet.
- **Ship mode:** prepare release notes, final checks, and handoff.
- **Retro mode:** record what changed, what failed, and how the system should improve.

## Required Artifacts

- Intake summary
- Discovery notes when code or constraints are inspected
- Research brief when outside evidence informs a decision
- Spec
- Implementation plan
- Review report
- QA report
- Ship checklist
- Retrospective for completed larger efforts

## Subagent Policy

Use subagents when independence improves quality:

- Onboarding subagents interview without premature implementation bias.
- Review subagents inspect the diff without defending the implementation.
- Blind QA subagents receive only the product surface and task boundary.
- Context briefer subagents prepare bounded packets for retesting.

Subagents must state what context they received. They must not imply they observed UI, logs, tests, or screenshots unless they actually did.

## Verification Policy

Every build phase needs verification proportional to risk. Prefer automated tests, linting, validation scripts, screenshots, simulator runs, browser runs, and direct artifact checks. If verification cannot run, record the reason and the remaining risk.

## QA Philosophy

HVN separates QA passes by context:

- **Blind pass:** no spec, no implementation notes, no intended user journey unless it is visible in the product.
- **Briefed pass:** receives a bounded context packet with selected goals and constraints.
- **Informed pass:** may inspect implementation, issue history, and acceptance criteria.

The blind pass is never retroactively edited after context is disclosed. Later findings are recorded as separate passes.

## Onboarding

Onboarding is an adaptive subagent interview. Ask high-leverage questions about users, jobs, constraints, success signals, platform, data, risks, and non-goals. Stop when the next question is unlikely to change the first useful spec. Output unresolved questions instead of forcing certainty.

## Definition Of Done

Work is done when:

- The spec's acceptance criteria are satisfied or explicitly revised.
- Required artifacts are present and coherent.
- Tests or validation appropriate to the risk have run.
- Review findings are resolved or documented.
- QA mode and results are documented.
- Shipping instructions and rollback considerations are clear.
- No hidden placeholders or unsupported claims remain.
