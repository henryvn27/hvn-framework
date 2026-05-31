# Setup Validation

Setup validation checks whether an integration can support the intended HVN action. It should avoid destructive writes unless the user approved them.

## Questions To Answer

- Is the tool reachable?
- Is authentication working?
- Is the scope sufficient?
- Can the current harness use this integration method?
- What exactly failed if setup is incomplete?
- Is a fallback available?

## Validation Levels

- Reachability: the service, server, CLI, or connector responds.
- Authentication: the user or environment is signed in.
- Read scope: the target repo, issue, team, or project can be read.
- Write scope: the required comment, issue, PR, state, or release action can be performed.
- Harness capability: the host can expose the tool to the agent.

## Manual Validation

When automated validation is unavailable, provide a checklist:

- open the target service
- confirm the user account
- confirm the target repo, workspace, issue, or project
- perform a safe read
- perform a safe write only if needed and approved

## Reporting

Use [integration health report](../templates/integration-health-report.md). Do not collapse different failures into "setup failed." Name the failing layer: service, auth, scope, harness, or fallback.

Runtime adaptation should use validation results to tighten or loosen recommendations rather than assuming setup succeeded.
