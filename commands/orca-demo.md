# orca-demo

## Purpose

Run a low-input ORCA showcase flow that asks a few high-leverage questions, chooses a customized product direction, and turns it into a bounded `/goal` execution prompt that should keep going until the demo output is truly done.

## When To Use

Use when a first-time or evaluating user wants one impressive ORCA experience with minimal setup and minimal prompt-writing.

## Required Inputs

- One sentence about who the user is, what they care about, or what kind of output they want

## Optional Inputs

- Preferred surface such as iOS app, web app, business idea, tool, or automation
- Timebox
- Whether the output should optimize for monetization, usefulness, portfolio value, or learning
- Whether the user wants ORCA to mostly choose for them or show a few options first

## Workflow

1. Use `orca-demo`.
2. Ask a short first-pass interview that should usually cover:
   - who the user is or what they are into
   - what kind of output sounds exciting or useful
   - preferred surface such as app, tool, website, workflow, or business
   - whether the user wants monetization, utility, portfolio impact, or novelty
   - whether ORCA should mostly choose the direction or show a small ranked set first
3. Keep the question count low. The demo should feel personalized, not like an intake marathon.
4. Write `templates/demo-brief.md`.
5. Choose a product direction that is simple enough to finish and different enough that two users should not automatically get the same outcome.
6. Convert the demo brief into a bounded ORCA `/goal` prompt that:
   - uses `orca-onboard -> orca-spec -> orca-plan -> orca-build -> orca-review`
   - keeps going until the chosen demo output is complete, verified, and documented
   - stops only for destructive actions, credential or billing changes, DNS changes, or genuinely product-defining decisions
7. Make the goal output-specific, not generic. The user should be able to run it directly in Codex or Claude Code.

## Outputs And Artifacts

- `templates/demo-brief.md`
- A ready-to-run `/goal` prompt
- Recommended first output type and why it was chosen

## Failure Cases

- If the prompt is too generic, ask one or two more questions instead of giving the same demo to everyone.
- If the chosen output is too large for a convincing demo, narrow the wedge before writing the goal.
- If the result depends on unstable external setup, prefer a smaller output that can actually finish.

## Related Commands And Skills

- Commands: `orca-onboard`, `orca-goal`, `orca-idea`, `orca-spec`
- Skills: `orca-demo`, `orca-business-ideation`, `orca-goal-mode`
