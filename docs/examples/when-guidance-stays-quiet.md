# When Guidance Stays Quiet

ORCA-HVN should not emit next-step guidance after every small message.

## Example

The agent finishes implementation and immediately starts the already-approved test command in the same response.

```text
Running the approved verification now.
```

No separate guidance is needed because the next action is already underway.

## Other Quiet Cases

- the user asked for no next-step guidance
- the phase is not complete
- guidance would repeat the previous turn
- a direct approval question is required instead
