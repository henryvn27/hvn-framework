# Update Modes

Channel and mode are separate.

The channel answers "which release stream?"
The mode answers "how automatic should update behavior be?"

## Modes

### Auto-Check And Prompt Before Apply

- checks in the background or at safe moments
- shows the user a concise update notice
- does not apply until confirmed

### Auto-Check And Auto-Apply Low-Risk Updates

- checks automatically
- applies only verified low-risk updates in allowed channels
- blocks itself when migrations, compatibility risk, or dirty local state appear

### Manual Check Only

- no automatic checks
- user runs `orca-check-updates`

### Fully Disabled

- no automatic checks
- no prompts
- only explicit user-driven update actions

## Recommended Default

- stable channel
- auto-check plus prompt before apply
