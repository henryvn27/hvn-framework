# Supervisor Worker

Parent:

- chooses the repo-mapper worker
- passes a narrow packet
- waits for a structured summary
- decides what happens next

Worker:

- maps the repo area
- returns findings and blockers
- does not talk to the user
