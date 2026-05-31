# Minimum Friction Policy

Never add a setup requirement unless it clearly reduces more friction than it creates.
This rule applies across integrations, docs, prompts, paved roads, automations, and agent behavior.

## Preferred Order

1. answer directly with no extra tooling
2. use existing repo, issue, or artifact context
3. inspect the user's vault if it is already available
4. suggest graph tooling only if it would materially help
5. help set up Graphify or advanced graph workflows only if the user asks or the benefit is clear

## Practical Meaning

- basic value should arrive before advanced setup
- optional tooling should appear through progressive disclosure
- advanced graph outputs should be hidden when the user does not need them
- ORCA-HVN should prefer inspection over infrastructure
