# Human Approval For Issues

External issue submission is a durable action. It needs explicit user approval.

## Approval Rule

ORCA Framework may identify candidates automatically.

ORCA Framework may draft issue content automatically.

ORCA Framework may not submit the issue externally without explicit user approval.

## Supported Choices

- skip
- draft only
- submit now
- merge into existing issue
- remind me later

## Prompt Shape

The prompt should be short and specific:

- what the framework issue is
- what quality signal was observed when relevant
- why it is reusable
- what evidence came from this session
- what action ORCA Framework is asking to take

Use [templates/issue-approval-prompt.md](../templates/issue-approval-prompt.md).
