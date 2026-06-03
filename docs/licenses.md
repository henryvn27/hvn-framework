# Licenses And Notices

ORCA Framework separates its own license from third-party notices and provenance records.

## Root Files

- [LICENSE](../LICENSE): ORCA Framework's own project license
- [NOTICE](../NOTICE): short root-level notice summary
- [THIRD_PARTY_NOTICES.md](../THIRD_PARTY_NOTICES.md): third-party notice and redistribution record
- [UPSTREAM.md](../UPSTREAM.md): upstream catalog, including relationship type and status

## Repository Rule

Keep ORCA Framework's own [LICENSE](../LICENSE) focused on ORCA Framework. Do not turn it into a mixed legal dump for unrelated upstream projects.

## Current State

This repository audit does not identify intentionally bundled third-party code that requires a large embedded license appendix. Most current third-party relationships are:

- integrations
- compatibility targets
- documentation influences
- conceptual or workflow influences

That can change. If future versions redistribute third-party code, templates, snippets, or assets, record that in [THIRD_PARTY_NOTICES.md](../THIRD_PARTY_NOTICES.md) and preserve required notices.

## Notice Rule

If a future change copies or materially adapts source from an upstream project:

1. record the source in [UPSTREAM.md](../UPSTREAM.md)
2. preserve required notices
3. update [THIRD_PARTY_NOTICES.md](../THIRD_PARTY_NOTICES.md)
4. add provenance guidance near the affected feature or file when useful
