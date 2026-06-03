# Install Prerequisites

Be explicit here. If a requirement is optional, say so.

## Supported Operating Systems

Current documented paths:

- macOS: supported
- Linux: supported for shell-based install paths
- Windows: partial support through PowerShell install and manual verification

## Required Items

| Item | Required | Why |
| --- | --- | --- |
| git | yes | needed to clone the repo |
| shell access | yes for macOS/Linux | needed to run install and validation scripts |
| this repository | yes | source of ORCA docs, commands, skills, templates, and install scripts |

## Optional But Common

| Item | Required | Why |
| --- | --- | --- |
| GitHub auth | only if your workflow needs GitHub actions | PRs, issues, checks |
| Linear access | only if you want ORCA's default system of record live | issue-first workflow |
| harness install | only if you are using ORCA through a specific host | Codex, Claude Code, VS Code |
| plugins | no | only for specific workflows |

## Accounts You May Need

- GitHub account: only if you need GitHub-integrated workflows
- Linear account: only if you want live Linear-first usage
- harness account or login: only if the chosen harness requires it

## Permissions

You may need:

- permission to clone the repo
- permission to run local scripts
- permission to sign into GitHub or Linear if your workflow needs them

## Safe To Skip On Day One

- plugins
- optional integrations
- advanced harness setup
- global install
