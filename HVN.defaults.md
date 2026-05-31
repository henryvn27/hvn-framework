# HVN Defaults

HVN ships with an opinionated default operating style. Users can replace or override it, but installed HVN should behave this way unless a project profile says otherwise.

## Default Profile

The shipped default is modeled by `profiles/henry-van-ness.md`.

Core defaults:

- Linear-first work management for non-trivial work.
- Most-specific installed skill routing.
- Preserve existing stack, conventions, and architecture unless redesign is requested.
- High design sensitivity for frontend, product, marketing, branding, and UX work.
- Authenticity preflight for high-visibility UI, frontend presentation, product copy, and polished writing.
- Full-output enforcement when the user explicitly asks for complete output, exhaustive files, or no omissions.
- Blind QA and context-controlled retesting for user-facing work.

## Skill Routing

Before non-trivial execution, HVN routes the task:

1. Honor a skill explicitly named by the user when it is installed and relevant.
2. Choose the narrowest installed skill that matches the primary task.
3. Use broader skills only for compatible constraints.
4. Prefer product/design/frontend skills for high-stakes user-facing work.
5. Trigger authenticity preflight for design-heavy or writing-heavy work.
6. Prefer improve-in-place skills for existing products.
7. Use full-output enforcement for exhaustive output requests.
8. Fall back to `hvn-core` only when no more specific skill is installed.

## Linear-First Work Management

For non-trivial projects, features, bug fixes, research tasks, and multi-step changes:

1. Inspect Linear for an existing project matching the repository, app, product, or client effort.
2. Reuse the existing project if present.
3. Create a separate Linear project when no matching project exists.
4. Create or reuse Linear issues for meaningful units of work before implementation.
5. Keep unrelated products in separate Linear projects.
6. Keep issue status, notes, blockers, links, and handoffs current.
7. Include Linear project and issue identifiers in summaries.
8. If Linear is blocked, say so and record the exact sync that should happen later.

## Preserve Existing Work

When working inside an existing repo:

- Read local patterns before editing.
- Preserve framework, routing, state, naming, and design-system conventions.
- Improve in place unless the user explicitly requests a redesign or rewrite.
- Avoid broad refactors that are not required for the current issue.

## Authenticity Preflight

Before high-visibility UI or polished writing, HVN calibrates against generic AI failure modes. The calibration names what to avoid, what direction fits the product, and what review should check. It must not encourage fake personal anecdotes or detector-evasion framing.

## Configuration Philosophy

Framework defaults are shared HVN behavior. Profiles tune those defaults for a person, team, or product. A project may replace the shipped profile, but it should preserve the HVN guarantees: durable work record, explicit routing, written artifacts, bounded context, review gates, QA evidence, and done-state proof.
