# Moving From GStack Or GSD To ORCA-HVN

## What This Guide Is For

Use this guide if you started with GStack or GSD patterns and want to understand how ORCA-HVN replaces that workflow.

Do not treat ORCA-HVN as something you run alongside them. The intended path is to use ORCA-HVN itself as the workflow system.

## Why ORCA-HVN Exists

GStack and GSD helped shape some early ideas:

- stronger step-by-step execution
- more explicit workflow structure
- better task momentum

But ORCA-HVN is the clearer replacement:

- one named framework
- one command surface
- one artifact model
- one docs system
- one runtime story
- one place to learn the workflow and keep using it

## Replacement Map

- vague execution habit -> `orca-onboard`
- ad hoc task shaping -> `orca-spec`
- implicit next steps -> `orca-plan`
- raw execution -> `orca-build`
- informal "looks fine" -> `orca-review`

## Default ORCA Path

Start here:

1. `orca-onboard`
2. `orca-spec`
3. `orca-plan`
4. `orca-build`
5. `orca-review`

## Common Mistake To Avoid

Do not keep ORCA-HVN as a thin wrapper around an older GStack or GSD routine. If you are adopting ORCA-HVN, let ORCA own the workflow.

Do not assume ORCA is only the beginner layer before switching to something else. The intent is that ORCA is both the teaching surface and the durable operating surface.

## Read Next

- [../first-workflow.md](../first-workflow.md)
- [../quickstart.md](../quickstart.md)
- [runtime-adaptation-guide.md](runtime-adaptation-guide.md)
