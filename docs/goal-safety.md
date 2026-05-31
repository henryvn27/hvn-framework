# Goal Safety

Goal mode can keep work moving across turns, so unclear goals create compound risk. HVN uses goal mode only when the scope, completion condition, and verification path are explicit.

## Do Not Use Goal Mode For

- vague goals
- open-ended autonomy
- broad repo-wide improvement
- unclear tasks
- destructive or risky work without approval
- tasks without verification
- work that should stop after each human judgment point

## Why Vague Goals Are Dangerous

Vague goals invite the agent to invent scope. A goal like "make the app better" has no bounded completion condition, no natural stop point, and no clear verification method.

## Budget And Time Limits

Goal contracts should include stop conditions such as:

- maximum turns
- maximum elapsed time
- budget cap when usage is visible
- stop on repeated blocker
- stop on approval trigger

## Branch And Review Safety

For long-running work, prefer:

- isolated branches or worktrees
- incremental commits
- reviewable phases
- local verification before ship decisions

## Approval Gates

Approval gates should block goal mode when the goal requires:

- destructive operations
- production config changes
- dependency or installer changes
- unreviewed tools or MCP servers
- broad refactors
- scope expansion beyond the approved spec
