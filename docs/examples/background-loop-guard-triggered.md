# Example Background Loop Guard Triggered

## Situation

The run kept reworking the same implementation plan without producing new file scope, verification output, or changed constraints.

## Final State

`stalled`

## Why It Stopped

Semantic loop detection triggered after repeated low-delta planning passes. The receipt summarized the repetition and recommended either narrower scope or human review.
