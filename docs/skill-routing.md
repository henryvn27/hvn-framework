# Skill Routing

HVN uses a most-specific-skill-wins routing policy.

## Routing Principle

Use the narrowest installed skill that matches the primary task. Borrow constraints from broader skills only when compatible with the specific skill and project.

## Routing Order

1. User-named skill or command.
2. Safety or process-critical skill.
3. Domain-specific skill.
4. Product or platform skill.
5. Broad implementation skill.
6. `hvn-core` fallback.

## Frontend And Design Routing

For high-stakes frontend, product, marketing, branding, or UX work, route deliberately. Do not default to generic implementation.

Examples:

- Premium frontend implementation: route to a premium frontend or design-engineering skill.
- Existing product improvement: route to an improve-in-place or redesign-existing-projects skill.
- Fine interaction craft: route to a micro-interaction or design-engineering skill.
- Brand identity: route to brand or visual-world skills.
- Image-to-code: route to image-to-code when the task starts from a visual reference.
- Reference image generation: route to image-generation concept skills when the deliverable is art direction rather than code.

## Existing Product Rule

When the repo or product already exists, preserve stack, functionality, state model, component architecture, and local conventions unless the user explicitly asks for a redesign or rewrite.

## Full-Output Routing

If the user asks for complete files, exhaustive output, no omissions, or full deliverables, route to full-output enforcement. Do not abbreviate remaining sections or replace content with summaries.

## Linear Routing

For non-trivial work, route through Linear first:

1. Check or create the Linear project.
2. Check or create the issue.
3. Record the selected skills and planned artifacts.
4. Keep the issue updated during execution.

If Linear is blocked, record the pending sync exactly.

## Reusable Examples

The Henry profile includes examples of premium frontend routing, improve-in-place routing, full-output routing, and Linear-first routing. Other profiles can replace those examples without changing the framework contract.
