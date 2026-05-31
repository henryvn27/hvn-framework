# Blocked Subagent Escalation

If a worker needs approval or clarification, it should return a blocked or clarification-required packet.

The parent then decides whether to:

- ask the user
- reroute the task
- narrow the scope
- stop the orchestration path
