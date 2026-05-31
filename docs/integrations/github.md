# GitHub Integration

GitHub integration is useful when HVN needs repository metadata, issues, pull requests, reviews, checks, releases, or changelog context.

## When GitHub Is Required

Require GitHub setup when HVN must:

- read or update GitHub issues directly
- open or update a pull request
- inspect PR checks or workflow runs
- create releases or release notes
- create draft issues for ecosystem findings

## When GitHub Is Optional

GitHub is optional when:

- the local repository contains enough context
- the user can manually paste issue or PR content
- the user will perform GitHub writes outside HVN

## Setup Paths

- Native connector: use when the harness provides an authenticated GitHub connector.
- GitHub MCP server: use when the host supports MCP and the server is approved by tool governance.
- `gh` CLI: use when local shell access and GitHub CLI auth are available.
- API token: use only when the user or environment already provides a scoped token.
- Manual: use local repo plus pasted issues, PR links, and check output.

## Validation

Prefer non-destructive checks:

- confirm auth state
- confirm target repo is reachable
- read issue or PR metadata
- read check status when needed
- verify write scope only when a write action is required

Do not assume write access from read success.

## Fallback

If GitHub is unavailable, HVN can still:

- work from the local repo
- produce branch and commit instructions
- write draft PR or issue text locally
- ask the user to paste CI output
- record release notes without publishing them

## Sources

- https://github.com/github/github-mcp-server
- https://cli.github.com/manual/gh_auth_status
- https://docs.github.com/en/copilot/how-tos/provide-context/use-mcp/extend-copilot-chat-with-mcp
