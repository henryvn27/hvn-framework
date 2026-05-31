# Documentation Information Architecture

This page defines the canonical documentation structure for HVN.

## Principles

- Layered: new users should not start in deep reference docs
- Navigable: each layer routes to the next useful layer
- Opinionated: routing pages should tell readers what to read first
- Maintainable: a small number of indexes summarize the broad surface area
- Docs-as-code friendly: docs are versioned, validated, reviewed, and audited

## Layers

### 1. Intro

- Audience: first-time visitors, evaluators, contributors landing on GitHub
- Purpose: explain what HVN is and why it exists
- Canonical pages:
  - `README.md`
  - `docs/intro.md`
  - `docs/start-here.md`

### 2. Quickstart

- Audience: users who want first value fast
- Purpose: provide the shortest path to installation, orientation, and first workflow
- Canonical pages:
  - `docs/quickstart.md`
  - `INSTALL.md`
  - host install examples under `docs/examples/`

### 3. Concepts

- Audience: users who need the mental model before choosing a workflow
- Purpose: explain architecture, glossary terms, and lifecycle concepts
- Canonical pages:
  - `docs/concept-map.md`
  - `docs/glossary.md`
  - `docs/architecture.md`
  - `docs/workflow.md`

### 4. Guides

- Audience: users with a concrete task or host context
- Purpose: teach when to use a feature, how the workflow behaves, common pitfalls, and what to read next
- Canonical pages:
  - `docs/guides/*.md`

### 5. Indexes

- Audience: users who know what they want to do but not where to look
- Purpose: route by feature, command, or use case
- Canonical pages:
  - `docs/feature-index.md`
  - `docs/command-index.md`
  - `docs/use-case-map.md`
  - `docs/choose-your-path.md`

### 6. Reference

- Audience: users who need exact behavior, constraints, or command details
- Purpose: define the durable source of truth
- Canonical pages:
  - `docs/commands.md`
  - `docs/skills.md`
  - `docs/hosts/*.md`
  - install lifecycle docs
  - workflow, architecture, and lifecycle references

### 7. Wiki

- Audience: readers who want a compact knowledge base or GitHub-native browse surface
- Purpose: summarize the system and link to canonical docs
- Canonical pages:
  - `wiki/Home.md`
  - `wiki/_Sidebar.md`
  - `wiki/Feature-Index.md`
  - `wiki/Workflow-Index.md`

### 8. Contributor And Maintenance Layer

- Audience: maintainers, reviewers, and automation
- Purpose: define freshness signals, ownership, doc update rules, and automation loops
- Canonical pages:
  - `docs/docs-automation.md`
  - `docs/wiki-maintenance.md`
  - `docs/staleness-detection.md`
  - `docs/doc-owners.md`
  - `docs/contributing-docs.md`

### 9. Rediscoverability Layer

- Audience: returning users and contributors
- Purpose: show what changed and where to go next
- Canonical pages:
  - `docs/whats-new.md`
  - `docs/recent-doc-updates.md`
  - `wiki/Whats-New.md`

## Movement Through The System

The expected path is:

1. `README.md` for the pitch and top-level routing
2. `docs/start-here.md` for orientation
3. `docs/quickstart.md` for first value
4. `docs/choose-your-path.md` for scenario-based routing
5. A guide or reference page based on the user's actual host, workflow, or problem

## What Belongs Where

- Put durable detailed behavior in reference docs.
- Put summaries and routing in indexes or wiki pages.
- Put teaching-oriented narrative in guide pages.
- Put contributor rules, freshness metadata, and audit logic in maintenance docs.
- Do not add new top-level docs when a section in an index or guide would be enough.

## Update Rules

- If a new feature or command is added, update `docs/feature-index.md` and `docs/command-index.md`.
- If the top-level newcomer path changes, update `README.md`, `docs/start-here.md`, `docs/quickstart.md`, and `wiki/Home.md`.
- If a host workflow changes, update the relevant guide, host page, and `wiki/Hosts-and-Harnesses.md`.
- If a concept changes, update both `docs/glossary.md` and `docs/concept-map.md`.
