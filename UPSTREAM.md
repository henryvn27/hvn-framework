# Upstream Catalog

This is the canonical catalog of upstream projects, tools, manuals, and references that materially shape ORCA-HVN.

Use [docs/attribution.md](docs/attribution.md) for the model behind these entries.

## Entry Format

Each entry records:

- project or source
- link
- maintainer or organization
- license when known
- relationship type
- what ORCA-HVN uses or borrows
- whether code is copied, adapted, wrapped, referenced, or only inspiring
- whether special notices are required
- related ORCA-HVN feature areas
- status notes

## Upstream Entries

### Linear

- Link: [linear.app](https://linear.app/)
- Maintainer or org: Linear
- License: proprietary service
- Relationship type: direct wrapper or integration
- What ORCA-HVN uses or borrows: issue-first workflow, project coordination, comments as durable records, state-gated progression, and tracker-native execution paths
- ORCA-HVN relationship detail: wraps and integrates the service through Linear-first commands, setup guidance, and runtime routing; no Linear source code is redistributed in this repo
- Special notices required: none known for service interoperability alone
- Related ORCA-HVN areas: `docs/linear-*`, `commands/orca-linear-*`, setup docs, runtime docs
- Status notes: active primary system-of-record integration

### GitHub

- Link: [github.com](https://github.com/)
- Maintainer or org: GitHub
- License: proprietary service
- Relationship type: direct wrapper or integration
- What ORCA-HVN uses or borrows: repository, issue, PR, checks, release, and workflow surfaces
- ORCA-HVN relationship detail: integrates and wraps GitHub workflows through docs, setup guidance, validation flows, and GitHub-specific release expectations; no GitHub source code is redistributed
- Special notices required: none known for service interoperability alone
- Related ORCA-HVN areas: `docs/integrations/github.md`, setup docs, ship docs, ecosystem sweep
- Status notes: active ecosystem and release integration

### GitHub MCP Server

- Link: [github/github-mcp-server](https://github.com/github/github-mcp-server)
- Maintainer or org: GitHub
- License: see upstream repository
- Relationship type: direct wrapper or integration
- What ORCA-HVN uses or borrows: an approved MCP path for GitHub access in supported hosts
- ORCA-HVN relationship detail: documented integration target and setup path; no bundled server code in this repo
- Special notices required: only if code or configuration is redistributed beyond examples
- Related ORCA-HVN areas: `docs/integrations/github.md`, `docs/mcp-governance.md`, `registry/mcp-servers/`
- Status notes: active optional integration path

### Linear MCP

- Link: [Linear MCP docs](https://linear.app/docs/mcp)
- Maintainer or org: Linear
- License: documentation and service terms per upstream
- Relationship type: direct wrapper or integration
- What ORCA-HVN uses or borrows: an official MCP path for Linear access where host support and governance allow it
- ORCA-HVN relationship detail: integration target and setup method; no bundled Linear MCP server code in this repo
- Special notices required: none known for interoperability documentation
- Related ORCA-HVN areas: `docs/integrations/linear.md`, setup docs, MCP governance docs
- Status notes: active optional integration path

### OpenAI Codex CLI

- Link: [openai/codex](https://github.com/openai/codex)
- Maintainer or org: OpenAI
- License: see upstream repository
- Relationship type: compatibility target
- What ORCA-HVN uses or borrows: a host environment for execution, command routing, and goal-mode compatibility
- ORCA-HVN relationship detail: ORCA-HVN supports and documents Codex-specific behavior but does not redistribute Codex CLI code
- Special notices required: none known for compatibility documentation alone
- Related ORCA-HVN areas: `docs/hosts/codex-cli.md`, runtime docs, compatibility matrix
- Status notes: active executor target

### Impeccable

- Link: [pbakaus/impeccable](https://github.com/pbakaus/impeccable)
- Maintainer or org: Paul Bakaus and contributors
- License: Apache-2.0
- Relationship type: direct wrapper or integration
- What ORCA-HVN uses or borrows: a maintained design skill pack, shared frontend design vocabulary, design shaping commands, and deterministic anti-slop checks
- ORCA-HVN relationship detail: ORCA-HVN wraps Impeccable as an official capability pack through `orca-impeccable`, integration docs, and wrapper skills; ORCA-HVN does not redistribute Impeccable source in this repo
- Special notices required: preserve attribution and any required notices if future changes vendor commands, skill text, rules, or code
- Related ORCA-HVN areas: `commands/orca-impeccable.md`, `skills/orca-impeccable/`, `integrations/impeccable.md`
- Status notes: active maintained upstream wrapper target for design-heavy work

### Superpowers

- Link: [obra/superpowers](https://github.com/obra/superpowers)
- Maintainer or org: Jesse Vincent, Prime Radiant, and contributors
- License: MIT
- Relationship type: direct wrapper or integration
- What ORCA-HVN uses or borrows: a maintained skills framework, disciplined coding workflow, design-before-build sequencing, planning conventions, and multi-agent execution patterns
- ORCA-HVN relationship detail: ORCA-HVN wraps Superpowers as an official capability pack through `orca-superpowers`, integration docs, and wrapper skills; ORCA-HVN does not redistribute Superpowers source in this repo
- Special notices required: preserve attribution and any required notices if future changes vendor prompts, skills, or helper code from the upstream repo
- Related ORCA-HVN areas: `commands/orca-superpowers.md`, `skills/orca-superpowers/`, `integrations/superpowers.md`
- Status notes: active maintained upstream wrapper target for execution-heavy coding workflows

### Claude Code

- Link: [Claude Code docs](https://code.claude.com/docs/en/overview)
- Maintainer or org: Anthropic
- License: proprietary host and docs terms per upstream
- Relationship type: compatibility target
- What ORCA-HVN uses or borrows: host compatibility behavior, goal-mode support expectations, and MCP setup expectations
- ORCA-HVN relationship detail: host adapter and compatibility target; no bundled Claude Code software
- Special notices required: none known for compatibility documentation alone
- Related ORCA-HVN areas: `docs/hosts/claude-code.md`, runtime docs, compatibility matrix
- Status notes: active compatibility target

### Hermes Agent

- Link: [NousResearch/hermes-agent](https://github.com/NousResearch/hermes-agent)
- Maintainer or org: Nous Research
- License: see upstream repository
- Relationship type: compatibility target
- What ORCA-HVN uses or borrows: controller-agent compatibility target and host-model framing
- ORCA-HVN relationship detail: ORCA-HVN documents Hermes-like controller behavior and compatibility; no Hermes code is redistributed
- Special notices required: none known for compatibility documentation alone
- Related ORCA-HVN areas: `docs/hosts/hermes-agent.md`, `docs/controller-agent-integration.md`, compatibility docs
- Status notes: active compatibility target

### GitHub Spec Kit

- Link: [github/spec-kit](https://github.com/github/spec-kit)
- Maintainer or org: GitHub
- License: see upstream repository
- Relationship type: workflow influenced by
- What ORCA-HVN uses or borrows: spec-driven workflow framing, artifact sequencing, and the idea that AI-assisted delivery benefits from explicit spec and plan stages
- ORCA-HVN relationship detail: ORCA-HVN adapts the broader spec-driven mindset into its own Linear-first, QA-layered, multi-harness framework; no Spec Kit code is known to be redistributed in this repo
- Special notices required: none known from conceptual influence alone
- Related ORCA-HVN areas: `docs/spec-driven-workflow.md`, workflow docs, ecosystem sweep
- Status notes: conceptual workflow influence, not a runtime dependency

### LLM Council

- Link: [karpathy/llm-council](https://github.com/karpathy/llm-council)
- Maintainer or org: Andrej Karpathy and contributors
- License: see upstream repository
- Relationship type: concept adapted from
- What ORCA-HVN uses or borrows: the three-stage council pattern of independent responses, anonymized peer review and ranking, and a final synthesized answer
- ORCA-HVN relationship detail: ORCA-HVN adapts the council shape into reusable subagent decision workflows for product ideas, feature evaluation, and market-opportunity judgment; ORCA-HVN does not redistribute upstream code in this repo
- Special notices required: preserve attribution if future work vendors prompts, code, or UI concepts more directly
- Related ORCA-HVN areas: `skills/orca-model-council/`, `skills/orca-council-product-idea/`, `skills/orca-council-feature-evaluation/`, `skills/orca-council-market-opportunity/`, `docs/model-council.md`
- Status notes: conceptual decision-workflow influence, not a bundled dependency

### Bloomberg Beta Manual

- Link: [Bloomberg Beta Manual](https://github.com/Bloomberg-Beta/Manual)
- Maintainer or org: Bloomberg Beta
- License: see upstream repository
- Relationship type: documentation or reference influence
- What ORCA-HVN uses or borrows: explicit written thinking about venture evaluation, criteria, and decision transparency
- ORCA-HVN relationship detail: influences the business-ideation lane's preference for inspectable written judgment over hype; no Bloomberg Beta content is redistributed as bundled source
- Special notices required: none known from reference use alone
- Related ORCA-HVN areas: business ideation docs and templates
- Status notes: reference influence for ideation framing

### Steve Blank Customer Development Writing

- Link: [Customer Development is Not a Focus Group](https://steveblank.com/2009/11/30/customer-development-is-not-a-focus-group/)
- Maintainer or org: Steve Blank
- License: public site terms per upstream
- Relationship type: documentation or reference influence
- What ORCA-HVN uses or borrows: hypothesis-testing and customer-discovery framing for idea validation
- ORCA-HVN relationship detail: informs validation bias toward explicit assumptions and small experiments; no upstream code or text is redistributed beyond normal citation
- Special notices required: none known from reference use alone
- Related ORCA-HVN areas: `docs/idea-validation.md`, validation templates
- Status notes: reference influence for startup validation workflow
