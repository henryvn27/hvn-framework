# Quality Feedback UX

When a session may have exposed framework-quality problems, ORCA Framework may ask the user whether to draft or submit a framework issue.

The prompt should be respectful and easy to decline.

## Prompting Rules

- do not claim certainty about the user's emotional state
- do not use manipulative language
- do not ask unless there is concrete session evidence
- keep the wording short
- separate the observed problem from the requested action

## Good Prompt Shape

- what happened
- why it may be a framework issue
- what action ORCA Framework is offering

Examples:

- "This session may have revealed a reusable ORCA Framework issue: repeated wrong-direction guidance after correction. Draft a framework issue?"
- "This session produced repetitive or generic output with low specificity. Draft an improvement issue for ORCA Framework?"

Use [templates/quality-check-prompt.md](../templates/quality-check-prompt.md).
