# Install And Onboarding Race

This pack compares ORCA-HVN against adjacent frameworks on two separate stages:

1. install speed and install friction
2. onboarding depth versus hassle

The point is not to win by gaming the prompt.
The point is to make ORCA-HVN the strongest real operator path for getting started.

## Core Experiment

Run four lanes from the same clean starting state:

- ORCA-HVN
- GSD
- GStack
- Codex-only

If a session uses subagents, give each lane one mission only.
Example:

- subagent A: install GSD
- subagent B: install GStack
- subagent C: install Codex-only path
- parent or separate benchmark run: install ORCA-HVN

If the harness can support a fourth independent worker cleanly, ORCA-HVN may also run in parallel as its own lane.
If not, run the ORCA-HVN lane separately but keep the environment and scoring rules matched.

## Stage 1: Install Race

Optimize for:

- successful install
- low completion time
- low tool-call count
- low human-reply count
- low blocker count
- low avoidable friction

ORCA-HVN should aim to become the clear winner here.
This stage rewards paved roads, clean setup questions, and minimal unnecessary ceremony.

## Stage 2: Onboarding Race

Optimize for:

- enough real information to start work
- low unnecessary hassle
- low vague or repeated questions
- good operator preference capture
- clear next action after onboarding

ORCA-HVN does not need to be the absolute fastest here.
It is acceptable for ORCA-HVN to take a little longer if it captures meaningfully better context without becoming annoying.

## Annoyance Ceiling

An onboarding run should be marked down if it:

- asks many questions whose answers do not change the next step
- front-loads host jargon before the task is clear
- asks the user to restate information already visible from the repo or prompt
- captures too little information to start a credible spec or plan

## Evidence To Save

For each lane and stage, keep:

- the exact starting prompt
- the trace or transcript excerpt
- completion time
- tool-call count
- human-reply count
- blocker count
- captured onboarding or install artifact
- benchmark report

## Improvement Rule

Keep rerunning the same benchmark set after meaningful ORCA-HVN install or onboarding changes.
Do not declare improvement from a one-off anecdote.
ORCA-HVN should only claim progress when the repeated benchmark shows:

- lower friction
- equal or better information quality
- less avoidable confusion

## Related Files

- [cases/IOR-001-install-race.md](cases/IOR-001-install-race.md)
- [cases/IOR-002-onboarding-race.md](cases/IOR-002-onboarding-race.md)
- [../../templates/benchmark-case.md](../../templates/benchmark-case.md)
- [../../templates/benchmark-report.md](../../templates/benchmark-report.md)
