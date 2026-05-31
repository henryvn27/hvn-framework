# Spec Quality Bar

The HVN spec quality bar decides whether a spec is ready for planning, needs clarification, or is too vague to proceed.

## Ready For Planning

A spec is ready for planning when:

- the problem is clear
- the objective is concrete
- in-scope work is separated from later and out-of-scope work
- target users or system actors are identified when relevant
- constraints and assumptions are explicit
- edge cases are named
- UX or system behavior is described
- data, API, migration, or security implications are addressed when relevant
- files, modules, or product areas likely to change are named or discoverable
- acceptance criteria are testable
- verification criteria are specific enough to plan
- rollout or risk notes exist when release risk matters

## Needs Clarification

A spec needs clarification when:

- one or more important fields are incomplete
- acceptance criteria are plausible but not testable
- constraints are implied but not written
- scope boundary is partially unclear
- implementation could proceed only with risky assumptions

The next action is a targeted question flow, discovery, or research.

## Too Vague To Proceed

A spec is too vague when:

- the problem is missing or solution-first
- objective is broad or subjective
- acceptance criteria are absent
- in-scope and out-of-scope work are mixed
- success cannot be verified
- user or system behavior is undefined
- edge cases and constraints are ignored for risky work

Do not plan or build from this state.

## Common Spec Defects

- Vague problem statement
- Missing acceptance criteria
- Missing constraints
- Hidden edge cases
- Unclear file or area of change
- Scope creep hidden as "nice to have"
- No verification criteria
- Solutioning before defining the problem
- Future phases mixed into v1 scope
- Assumptions presented as confirmed facts

## Review Output

Use `templates/spec-review.md` to record:

- readiness decision
- blocking gaps
- scope concerns
- missing verification
- clarification questions
- next command
