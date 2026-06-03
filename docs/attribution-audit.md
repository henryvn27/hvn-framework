# Attribution Audit

Use this checklist when auditing the repository.

## Core Checks

- Are major upstream influences named in [UPSTREAM.md](../UPSTREAM.md)?
- Are direct wrappers and integrations distinguished from conceptual borrowing?
- Are compatibility targets labeled as such instead of being overstated as upstream influences?
- Are redistributed components, if any, listed in [THIRD_PARTY_NOTICES.md](../THIRD_PARTY_NOTICES.md)?
- Is the root [LICENSE](../LICENSE) limited to ORCA Framework's own license?
- Is [NOTICE](../NOTICE) easy to find from GitHub?
- Does [README.md](../README.md) link to [UPSTREAM.md](../UPSTREAM.md), [ACKNOWLEDGEMENTS.md](../ACKNOWLEDGEMENTS.md), and [THIRD_PARTY_NOTICES.md](../THIRD_PARTY_NOTICES.md)?
- Do contributor docs explain how to add new attribution records?
- Does the repo describe originality honestly without underselling ORCA Framework's own design work?

## Failure Signals

- "inspired by various tools" with no names
- wrapper behavior described as if it were fully native ORCA Framework capability
- legal and casual acknowledgements mixed together with no structure
- code or templates adapted from upstreams without any provenance note
