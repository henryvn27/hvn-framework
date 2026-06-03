# Subagent Catalog

ORCA Framework keeps a reusable catalog of worker roles, not a mandate to use all of them.

## Reusable Roles

- researcher
  - best for bounded external-fact lookup, ecosystem comparison, or one gray-area decision
- repo mapper
  - best for brownfield structure discovery and file-level landscape mapping
- implementation worker
  - best for one owned code slice with clear write boundaries
- test or QA checker
  - best for blind QA, regression checks, or maker-checker validation
- docs updater
  - best for focused doc refreshes with linked source material
- issue drafter
  - best for turning findings into structured issue or backlog drafts
- stack or integration evaluator
  - best for tool-choice comparisons and setup-surface tradeoffs
- regression investigator
  - best for repeated bug patterns, flaky failures, or CI repro analysis
- memory or vault distiller
  - best for reducing large note or vault surfaces into one usable packet
- onboarding explainer
  - best for side-session teaching and adaptive explanation
- CI triager
  - best for failing check inspection and actionable log extraction
- PR feedback triager
  - best for collecting and organizing review threads into a remediation queue
- UI debug worker
  - best for persistent browser or app-state investigation with screenshot evidence
- context resolver
  - best for identifying the actual artifact the user means before deeper work starts

Use them only when the fit is strong.

## Selection Rule

Pick the worker role that minimizes ambiguity in:

- owned scope
- tool boundary
- expected output
- verification responsibility

If no role gives a clean ownership boundary, stay single-agent.
