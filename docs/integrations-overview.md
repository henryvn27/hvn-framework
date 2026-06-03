# Integrations Overview

ORCA-HVN integrations are structured capability packs for the tools modern product teams actually use to build and operate apps.

That includes upstream skill packs that ORCA wraps officially. If an upstream pack is already the best maintained implementation of a capability area, ORCA should expose it as an ORCA pathway instead of forcing users to think in separate product silos.

The most important current examples are Impeccable and Superpowers.

This is not a logo wall. An integration only counts when ORCA-HVN can describe:

- when to use it
- how to set it up
- how to validate it
- what workflows it supports
- what can go wrong
- what fallback exists

Support is broader than recommendation. Recommendation should stay narrower and fit-based.
ORCA-HVN should prefer the path that reduces setup and decision burden, not the path with the biggest tool surface.

## What An Integration Is

An ORCA-HVN integration is a reviewed support layer for a platform, service, SDK, or workflow dependency.

Support may include:

- setup guidance
- runtime-aware recommendations
- validation and diagnostics
- paved-road routing
- docs and examples
- platform-specific caveats
- wrapper commands and wrapper skills that make an upstream pack feel native to the ORCA workflow without hiding provenance

## Support Types

ORCA-HVN may support an integration through:

- docs-first guidance
- setup and validation commands
- runtime-aware workflow recommendations
- paved-road bundle recommendations
- host-specific fallback guidance

That does not mean ORCA-HVN should recommend the tool by default. See [integration-recommendation-policy.md](integration-recommendation-policy.md).

Not every integration gets the same depth on day one.

See [integration-priorities.md](integration-priorities.md).

## Core Categories

- web and product
- mobile
- backend and data
- auth
- payments
- email and communications
- analytics and monitoring
- testing and CI
- business and project systems
- automation
- AI and app-infra extras

See [integration-categories.md](integration-categories.md).

## How Integrations Connect To The Framework

- runtime adaptation chooses integration paths that the active harness can actually support
- paved roads recommend default bundles instead of forcing users to assemble a stack from scratch
- background mode should respect integration risk, credential boundaries, and validation limits
- setup and validation should distinguish missing setup from unsupported harness behavior

## Discovering The Right Integration

Start with:

- [choose-your-stack.md](choose-your-stack.md)
- [integration-use-case-map.md](integration-use-case-map.md)
- [web-stack-guide.md](web-stack-guide.md)
- [mobile-stack-guide.md](mobile-stack-guide.md)
- [saas-stack-guide.md](saas-stack-guide.md)

If the user already chose a tool, switch to setup-help mode instead of re-recommending the stack.

That rule especially matters for optional knowledge tools such as NotebookLM, where support should often mean setup and caveat handling rather than broad recommendation.
Use what the user already has when that gets them to value faster.

Then open the relevant pack in [../integrations/README.md](../integrations/README.md).
