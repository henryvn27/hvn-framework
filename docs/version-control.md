# Version Control And Iteration

HVN changes should be easy to inspect, compare, and ship. The repo uses ordinary Git history as the source of truth, with a small amount of framework-specific structure so agents and maintainers can understand what changed and why.

## Branch Model

Use one branch per coherent iteration.

Recommended branch names:

- `codex/<short-topic>` for agent-authored framework work
- `feature/<short-topic>` for human-authored feature work
- `fix/<short-topic>` for narrow fixes
- `docs/<short-topic>` for documentation-only work

Do not mix unrelated framework systems in the same branch unless the work is intentionally a single reliability or release iteration.

## Iteration Shape

Each meaningful iteration should have:

- a clear objective
- bounded scope
- docs, commands, skills, templates, and examples updated together when the capability crosses those surfaces
- validation results recorded in the final summary or PR
- changelog entry for user-visible framework changes
- follow-up notes when work is intentionally deferred

Use [templates/iteration-log.md](../templates/iteration-log.md) when the iteration spans multiple commits or adds a new framework capability.

## Commit Policy

Prefer small, reviewable commits grouped by capability.

Good commit subjects:

- `Add coordination state and inspection layer`
- `Add benchmark, accounting, and regression systems`
- `Extend ecosystem sweep watch and draft issues`

Avoid commit subjects that hide scope:

- `misc updates`
- `more docs`
- `fix stuff`

## Changelog Policy

Update [CHANGELOG.md](../CHANGELOG.md) for user-visible framework changes. Unreleased work should go under `Unreleased` until the next version is cut.

Use categories when useful:

- Added
- Changed
- Fixed
- Validation
- Known blockers

## Versioning Policy

HVN uses simple semantic versioning:

- patch: wording fixes, broken links, narrow template fixes
- minor: new commands, skills, templates, docs, or workflow capabilities
- major: incompatible workflow model or install behavior changes

The current public release candidate starts at `0.1.0`. Iterations that add framework capabilities should accumulate under `Unreleased` until maintainers choose the next tag.

## Validation Before PR Or Push

Run:

```sh
./scripts/validate-repo.sh
```

For targeted changes, also run the relevant focused check:

```sh
./scripts/check-reliability.sh
./scripts/check-improvement-systems.sh
./scripts/check-markdown.sh
./scripts/check-links.sh
```

## Push And Workflow Scope

This repo contains GitHub workflow files. Any branch that adds or edits `.github/workflows/*` needs GitHub credentials with workflow-file permission to push.

If push is blocked by auth scope:

- keep the local commit intact
- record the blocker in the handoff
- do not rewrite the branch to hide workflow changes
- push after reauthenticating with the required scope

## Iteration Review

Before considering an iteration complete, inspect:

- branch status
- recent commits
- changed file surface
- validation output
- changelog entry
- any manual push or auth blocker

The goal is not process overhead. The goal is that another maintainer can reconstruct the iteration without reading the full chat transcript.
