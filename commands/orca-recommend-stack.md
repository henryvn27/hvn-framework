# orca-recommend-stack

## Purpose

Recommend a stack only when the user's use case strongly fits ORCA Framework's researched defaults.

## When To Use

Use when the user asks what stack, service, or bundle fits their product or workflow.

## Required Inputs

- Product or workflow context

## Optional Inputs

- Platform
- Monetization model
- Auth or backend needs
- Existing tool choices

## Workflow

1. Detect the use case.
2. Decide whether recommendation mode is justified.
3. Recommend only strong-fit tools or bundles.
4. Explain briefly why the fit is strong.
5. Stay neutral or ask one concise question when signal is weak.
6. If the user already chose tools, switch to setup-help mode.

## Outputs And Artifacts

- `templates/use-case-profile.md`
- `templates/recommendation-confidence.md`

## Related Commands And Skills

- Commands: `orca-integration`, `orca-setup-integration`, `orca-validate-integration`
- Skills: `orca-integration-recommendation`, `orca-integrations`
