# Token Efficiency

ORCA Framework should treat token spend as an operational constraint, not an afterthought.

The goal is not fake precision or obsessive minimization. The goal is to avoid waste, keep long-running work bounded, and preserve quality by spending tokens where they matter.

## Core Policy

ORCA Framework should prefer:

- stable prompt prefixes that can benefit from provider-side prompt caching
- short durable artifacts over replaying long histories
- summaries, receipts, and shared-state snapshots over raw transcript reuse
- bounded output requests instead of open-ended expansion
- stage-specific budgets instead of one giant undifferentiated allowance
- tools, schemas, and artifacts that reduce repeated explanation

ORCA Framework should avoid:

- resending large background context that has not changed
- duplicating the same instructions across multiple artifacts
- pasting full traces, logs, or long docs when a citation or summary is enough
- repeated retry loops that consume tokens without improving the result
- using high-effort or long-output behavior for small, scoped tasks

## Practical Levers

## 1. Keep Stable Prefixes Stable

Prompt caching only helps when the repeated prefix stays identical.

That means:

- keep durable instructions at the front
- keep variable run-specific material near the end
- avoid needless timestamp, formatting, or ordering drift in repeated prompt blocks
- keep tool schemas stable when possible

If a host or provider exposes cache controls or cache metrics, ORCA Framework should use them conservatively and measure whether they actually help.

## 2. Compress Before Expanding

Before starting another large reasoning pass, prefer:

- latest receipt
- current shared-state summary
- run-memory summary
- milestone or goal contract
- narrow artifact excerpts

Do not replay a full issue thread, trace, or transcript unless the missing detail is actually blocking the work.

## 3. Spend By Stage

Different stages deserve different token behavior:

- onboarding and discovery can spend more on context gathering, but should end with a compact orientation artifact
- spec and milestone planning should produce concise contracts that reduce downstream re-explanation
- implementation should avoid verbose narration and prioritize bounded execution
- QA should spend on evidence, not repeated theorizing
- long-running goal or background work should stop at milestone boundaries and emit a receipt before drifting further

See [stage-budgets.md](stage-budgets.md) for the enforcement layer.

## 4. Treat Retries As Token Spend

Retries are hidden token burn.

If a run keeps:

- rediscovering the same repo facts
- re-reading the same large artifacts
- repeating the same failing tool pattern
- expanding outputs without changing the plan

then the workflow is inefficient even if the final answer eventually succeeds.

## 5. Prefer Structured Artifacts

Well-shaped artifacts reduce future prompt size.

Prefer:

- specs over long freeform intent restatements
- receipts over replaying full traces
- shared state over multi-role transcript stitching
- schemas and templates over re-explaining required fields each time

## 6. Keep Large Inputs Honest

Large code, logs, screenshots, and documents are sometimes justified. When they are:

- send only the relevant slice when possible
- downsample or crop images if full fidelity is unnecessary
- quote or excerpt only the exact section needed for the next step
- capture the durable conclusion in run memory, shared state, or a receipt so the next run does not need the full blob again

## 7. Measure What The Harness Actually Exposes

Use exact token or cost data when the host provides it.

If the host does not provide it:

- estimate only when the estimate is operationally useful
- mark the confidence clearly
- fall back to time, retry burden, output size, and stage churn as the practical efficiency signals

## Review Questions

Before approving a workflow change, ask:

- Does this reduce repeated prompt mass across runs?
- Does it improve cacheability by keeping repeated instructions stable?
- Does it replace transcript replay with a smaller artifact?
- Does it cut retries or just move them?
- Does it save tokens without hiding important evidence?

## Research Direction

The recurring ecosystem sweep should keep watching:

- provider prompt-caching behavior and limits
- token-aware tool-use patterns
- task-budget or effort controls
- better ways to summarize or checkpoint long-running work
- host-specific token telemetry that ORCA Framework can surface without overclaiming precision

## Sources

- OpenAI prompt caching: https://developers.openai.com/api/docs/guides/prompt-caching
- OpenAI token usage guidance: https://developers.openai.com/api/docs/guides/advanced-usage
- Anthropic prompt caching: https://platform.claude.com/docs/en/build-with-claude/prompt-caching
- Anthropic token-efficient tool-use and task-budget guidance: https://platform.claude.com/docs/en/docs/agents-and-tools/tool-use/token-efficient-tool-use
