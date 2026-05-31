# ORCA-HVN Ecosystem Sweep Tracked Sources

This file defines the baseline source set for the recurring ORCA-HVN ecosystem sweep.
Prefer official docs, release notes, changelogs, and upstream repositories.

## Harnesses

### Claude Code
- Docs: https://code.claude.com/docs/en/overview
- Commands: https://code.claude.com/docs/en/commands
- MCP: https://code.claude.com/docs/en/mcp
- Changelog index: https://code.claude.com/docs/en/release-notes

### Codex CLI
- Repo: https://github.com/openai/codex
- Releases: https://github.com/openai/codex/releases
- Getting started: https://help.openai.com/en/articles/11096431

### OpenCode
- Site: https://opencode.live/
- Repo: https://github.com/opencode-ai/opencode
- Releases: https://github.com/opencode-ai/opencode/releases
- MCP docs: https://dev.opencode.ai/docs/mcp-servers/

### Hermes Agent
- Repo: https://github.com/NousResearch/hermes-agent
- Releases: https://github.com/NousResearch/hermes-agent/releases
- Org: https://github.com/nousresearch

### Cursor
- MCP docs: https://docs.cursor.com/context/model-context-protocol
- MCP server catalog: https://docs.cursor.com/en/tools/mcp

### GitHub Copilot
- MCP overview: https://docs.github.com/en/copilot/concepts/context/mcp
- MCP extension docs: https://docs.github.com/en/copilot/how-tos/provide-context/use-mcp/extend-copilot-chat-with-mcp
- Copilot CLI MCP docs: https://docs.github.com/copilot/how-tos/copilot-cli/customize-copilot/add-mcp-servers

## Related Repos And Frameworks

### Get Shit Done
- Repo: https://github.com/gsd-build/get-shit-done
- Releases: https://github.com/gsd-build/get-shit-done/releases
- Configuration docs: https://github.com/gsd-build/get-shit-done/blob/main/docs/CONFIGURATION.md

### GitHub Spec Kit
- Docs: https://github.github.com/spec-kit/index.html
- Repo: https://github.com/github/spec-kit
- AGENTS guidance: https://github.com/github/spec-kit/blob/main/AGENTS.md

## Integration Setup Sources

### GitHub
- GitHub MCP server: https://github.com/github/github-mcp-server
- GitHub CLI auth: https://cli.github.com/manual/gh_auth_status
- GitHub Copilot MCP docs: https://docs.github.com/en/copilot/how-tos/provide-context/use-mcp/extend-copilot-chat-with-mcp

### Linear
- Linear MCP: https://linear.app/docs/mcp
- Linear docs: https://linear.app/docs

### NotebookLM
- NotebookLM Enterprise overview: https://docs.cloud.google.com/gemini/enterprise/notebooklm-enterprise/docs/overview
- NotebookLM Enterprise setup: https://docs.cloud.google.com/gemini/enterprise/notebooklm-enterprise/docs/set-up-notebooklm
- NotebookLM notebook API: https://docs.cloud.google.com/gemini/enterprise/notebooklm-enterprise/docs/api-notebooks
- NotebookLM source API: https://docs.cloud.google.com/gemini/enterprise/notebooklm-enterprise/docs/api-notebooks-sources
- Gemini Enterprise access path: https://docs.cloud.google.com/gemini/enterprise/docs/access-notebooklm
- Community MCP example: https://github.com/PleasePrompto/notebooklm-mcp
- Community MCP and HTTP example: https://github.com/roomi-fields/notebooklm-mcp

### VS Code
- VS Code MCP servers: https://code.visualstudio.com/docs/copilot/chat/mcp-servers

## Startup Stack Sources

### Expo And React Native
- Expo docs: https://docs.expo.dev/
- Expo workflow overview: https://docs.expo.dev/workflow/overview/
- Expo EAS Update: https://docs.expo.dev/eas-update/introduction/
- React Native docs: https://reactnative.dev/docs/getting-started.html

### Web And Deploy
- Vercel Next.js overview: https://vercel.com/docs/concepts/next.js/overview
- Vercel deployments overview: https://vercel.com/docs/deployments/overview

### Backend And Data
- Supabase docs: https://supabase.com/docs/
- Supabase features: https://supabase.com/docs/guides/getting-started/features
- Supabase Edge Functions: https://supabase.com/docs/guides/functions

### Auth
- Firebase Auth docs: https://firebase.google.com/docs/auth/

### Payments
- RevenueCat docs: https://www.revenuecat.com/docs/
- RevenueCat store payments: https://www.revenuecat.com/docs/platform-resources/developer-store-payments
- RevenueCat plus Stripe integration: https://www.revenuecat.com/integrations/stripe//

### Push
- OneSignal React Native setup: https://documentation.onesignal.com/docs/en/react-native-sdk-setup

## Design And Writing Quality Sources

### Design System Quality
- Design Systems Should Be Specific, Not Generic: https://designsystem.university/articles/design-systems-should-be-specific-not-generic
- Distinct Design Systems: https://designsystem.university/articles/distinct-design-systems

### UX Writing And Product Voice
- Apollo UX Writing Style Guide: https://www.apollographql.com/docs/ux-writing-style-guide
- Unity UI copy writing principles: https://docs-style-guide.unity.com/content-types/ui-copy/writing-principles/
- Siemens UX writing principles: https://ix.siemens.io/docs/guidelines/language/support-and-resources/UX-writing-principles

## Token Efficiency Sources

### OpenAI
- Prompt caching: https://developers.openai.com/api/docs/guides/prompt-caching
- Token usage and counting: https://developers.openai.com/api/docs/guides/advanced-usage

### Anthropic
- Prompt caching: https://platform.claude.com/docs/en/build-with-claude/prompt-caching
- Token-efficient tool use and task budgets: https://platform.claude.com/docs/en/docs/agents-and-tools/tool-use/token-efficient-tool-use

## Watch Themes

- persistent goals and `/goal`-style flows
- pause, resume, continue, and clear lifecycle semantics
- checkpointing and human approval flows
- automation and scheduling
- memory and state retention
- shared state and durable coordination
- run inspection, observability, and inspector surfaces
- workflow metrics and cost tracking
- tool governance, MCP review, and tool trust
- GitHub and Linear setup paths
- MCP-based setup flow changes
- official connector support changes
- host-specific install and config changes
- auth and permission pattern changes
- deprecated setup recommendations
- skill packaging and portability
- onboarding and install ergonomics
- novice and expert workflow adaptation
- QA, verification, and simulator support
- regression generation from QA
- benchmark and eval improvements
- multi-agent orchestration
- command naming and adapter conventions
- host-native UX and terminal behavior
- non-generic visual quality patterns
- design-system specificity over interchangeable template sameness
- human-sounding product copy and anti-generic UX writing patterns
- specialized design-quality tools and where orchestration should complement rather than replace them
- prompt caching stability requirements
- token-aware model effort or task-budget controls
- cache-read and usage telemetry that ORCA-HVN can surface
- summarization and checkpoint patterns that reduce repeated long-context replay
- modern startup default-stack drift across web and mobile product teams
- Expo and React Native workflow changes
- EAS build and update workflow changes
- native mobile subscription guidance versus web billing guidance
- auth, analytics, monitoring, and push defaults that affect ORCA-HVN stack recommendations
- evidence that a current default is losing best-fit status for a common use case
- evidence that a supported tool should remain setup-only rather than recommended
- evidence that NotebookLM should stay optional rather than becoming a default recommendation

## Harness Update Questions

For each materially changed harness, answer:

- What new feature or behavior appeared?
- Does it affect execution, memory, inspection, safety, or usability?
- Can ORCA-HVN exploit it directly, wrap it through a host adapter, or only learn from the pattern?
- Is the capability cross-harness or host-specific?
- What repo, docs, command, template, or workflow change would ORCA-HVN need?
- Does it improve beginner UX, expert UX, or both?
- Is it worth building now?

## Compatibility Audit Questions

For each tracked harness, answer:

- Which ORCA-HVN-relevant capabilities are clearly supported, partial, not supported, or unclear?
- What changed since the last audit?
- What setup or policy caveats affect real usability?
- Which integrations are native, external, or manual?
- What should ORCA-HVN recommend today for this harness?
- What should stay marked `unclear` pending more evidence?

## Integration Setup Questions

For each GitHub, Linear, MCP, connector, auth, permission, or host-specific setup change, answer:

- What changed in the setup path?
- Which hosts are affected?
- Which method changed: native connector, MCP, API token, plugin, CLI helper, or manual?
- Does this create a better default path ORCA-HVN should recommend?
- Does this break or deprecate an old ORCA-HVN recommendation?
- Does the change affect beginner setup, advanced setup, or both?
- Is the change host-specific or broadly portable?
- Should ORCA-HVN docs, commands, templates, host adapters, or degraded-mode guidance change?

## Recommendation Categories

- commands
- memory
- install
- cross-harness
- QA
- workflow

## Design Quality Questions

For material design, copy, or interface-quality shifts, answer:

- What helps user-facing work feel more product-specific and less generic?
- What concrete layout, typography, copy, or motion patterns should ORCA-HVN encourage or discourage?
- Does the finding belong in visual-quality guidance, human-voice guidance, or `orca-design` review standards?
- Does it suggest using a specialized design or writing tool instead of building another generic abstraction?

## Token Efficiency Questions

For material token-efficiency shifts, answer:

- What changed that could reduce token spend without degrading quality?
- Does it improve caching, budgeting, tool use, context management, or telemetry?
- Is the gain host-specific, provider-specific, or broadly portable?
- Should ORCA-HVN change token-efficiency guidance, stage budgets, accounting, or runtime behavior?
- Does the change reduce retries and repeated context, or only reduce nominal per-call spend?

## Stack Integration Questions

For material stack and integration shifts, answer:

- Does this change ORCA-HVN's default recommendation for web, mobile, SaaS, or internal-tool stacks?
- Is the change tier 1, tier 2, or watchlist relevance?
- Does it require pack updates, new diagnostics, or paved-road changes?
- Does it clarify a platform boundary, especially around mobile billing, push, auth, build, or OTA updates?

## Recommendation Policy Questions

For material recommendation shifts, answer:

- Does the evidence support recommendation or only support?
- Which use case does the fit apply to?
- Should ORCA-HVN change a strong default to good fit, possible fit, or neutral support?
- Is the signal about real fit or just market popularity?

## Source Quality Rules

- Prefer official docs, repos, releases, changelogs, and implementation examples.
- Treat secondary articles and social posts as supplemental evidence only.
- Do not report unchanged background as new.
- Mark uncertain findings explicitly.
- List exact URLs reviewed in the dated report.
- Prefer direct evidence over third-party summaries when classifying `Adopt now`.
