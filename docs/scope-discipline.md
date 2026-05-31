# Scope Discipline

HVN separates current work from future ideas before planning or implementation.

## Scope Buckets

Every non-trivial spec should distinguish:

- v1 / must-have
- later phase / v2
- out of scope

This prevents future ideas from silently entering the current build.

## v1 / Must-Have

v1 contains only the work required to satisfy the current objective and acceptance criteria.

Include:

- behavior needed now
- constraints that affect correctness
- required edge cases
- verification required for done

## Later Phase / v2

Later-phase work is valuable but not required for the current release.

Include:

- enhancements
- polish that can wait
- broader integrations
- alternate platforms
- automation not required for first delivery

Later-phase work should be recorded so it is not lost, but it must not change the current plan unless the spec is revised.

## Out Of Scope

Out-of-scope work is explicitly excluded.

Include:

- features the user does not want
- risky expansions
- unrelated refactors
- platform or audience exclusions
- data or workflow changes not approved

## Scope Creep Rules

Agents must not:

- silently absorb extra asks
- implement "while we are here" ideas
- mix future ideas into current build scope
- expand acceptance criteria during build
- treat vague nice-to-haves as requirements

If a new ask appears:

1. Record it as a later phase or out-of-scope candidate.
2. Ask whether the spec should be revised.
3. Do not implement it until scope changes are approved.

## Artifact

Use `templates/requirements-split.md` to separate current, later, and excluded work.
