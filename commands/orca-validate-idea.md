# orca-validate-idea

## Purpose

Choose and design the smallest credible next experiment for an idea.

## When To Use

Use when the user needs to reduce uncertainty through customer discovery, smoke tests, concierge work, preorders, or other lightweight validation.

## Required Inputs

- Idea summary
- Current key assumption or decision

## Optional Inputs

- Research notes
- Opportunity memo
- Budget or time constraints

## Workflow

1. Use `orca-business-ideation`.
2. Identify the assumption that matters most now.
3. Choose the smallest credible validation method.
4. Fill `templates/validation-plan.md`.
5. Add a focused test artifact such as `templates/assumption-test.md`, `templates/customer-interview-plan.md`, or `templates/smoke-test-plan.md`.
6. State what result would change the next decision.

## Outputs And Artifacts

- `templates/validation-plan.md`
- `templates/assumption-test.md`
- `templates/customer-interview-plan.md` or `templates/smoke-test-plan.md`

## Failure Cases

- If the user is really asking for product implementation, route to `orca-spec`.
- If the plan tests too many assumptions at once, narrow it.

## Related Commands And Skills

- Commands: `orca-idea`, `orca-evaluate-idea`, `orca-plan-idea`, `orca-spec`
- Skills: `orca-business-ideation`
