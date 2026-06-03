# Wrong-Direction Signals

Some bad sessions are not missing-feature failures.

They are "kept doing the wrong thing" failures.

## Patterns To Track

- solving the wrong problem
- using the wrong framing repeatedly
- ignoring stated constraints
- recommending unsupported features
- failing to adapt after correction
- repeating the same incorrect next step
- producing outputs that are structurally valid but operationally wrong

## Why This Matters

Wrong-direction signals often point to framework surfaces such as:

- runtime adaptation
- paved-road defaults
- docs clarity
- command routing
- background-mode safety
- next-step guidance

## Stronger Evidence

The signal is stronger when:

- the user corrected the framing and ORCA Framework still repeated it
- the framework kept recommending a path the harness or repo could not support
- ORCA Framework preserved formal structure while still missing the real task
- the same wrong next step appeared after new evidence was already available

## Weaker Evidence

Do not overreact when:

- the first attempt was wrong but the system adapted immediately
- the issue came from external tool failure rather than framework guidance
- the direction changed because the user changed the request
