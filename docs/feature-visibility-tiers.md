# Feature Visibility Tiers

Not every supported capability should be shown the same way.

## Tiers

### Default

Show by default because the capability is broadly useful, low-friction, and part of the main ORCA path.

Examples:

- the five-command beginner workflow
- onboarding, spec, plan, build, and review
- core docs routing pages

### Contextual

Show only when the use case, harness, or artifact state makes it relevant.

Examples:

- mobile stack guidance in a mobile workflow
- controller/executor routing when delegation is in play
- setup diagnostics when an integration is actually needed

### Optional

Available if the user asks for it or the fit is clearly strong, but not surfaced by default.

Examples:

- Graphify
- NotebookLM
- deeper vault analysis

### Advanced

Hide until needed because the capability adds complexity or assumes stronger framework familiarity.

Examples:

- shadow or canary rollout policy
- replay and restore comparisons
- schema and mapping details

### Internal

Maintain as a framework surface without exposing it directly in ordinary user guidance.

Examples:

- maintenance-only automation rules
- internal watch tables
- compatibility audit support details

## Rule

Supported is broader than visible.

If a capability does not deserve default visibility, move it down a tier instead of pretending every feature belongs in the first-run path.
