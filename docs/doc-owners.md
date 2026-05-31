# Documentation Owners

This file tracks who should care when a doc area changes.

## Ownership Table

| Area | Canonical pages | Owner or responsible area | Related features | Staleness risk | Update trigger conditions |
| --- | --- | --- | --- | --- | --- |
| Root intro | `README.md`, `docs/start-here.md`, `docs/quickstart.md`, `docs/intro.md` | Maintainers | first-run path, project pitch, newcomer onboarding | High | new top-level feature, install path change, workflow shift |
| Routing indexes | `docs/feature-index.md`, `docs/command-index.md`, `docs/choose-your-path.md`, `docs/use-case-map.md` | Maintainers | command routing, feature discovery | High | new command, guide, host, or feature area |
| Wiki | `wiki/Home.md`, `wiki/_Sidebar.md`, `wiki/Feature-Index.md`, `wiki/Workflow-Index.md` | Maintainers | GitHub navigation, overview summaries | High | docs hub changes, newcomer flow changes |
| Workflow and concepts | `docs/workflow.md`, `docs/architecture.md`, `docs/concept-map.md`, `docs/glossary.md` | Core workflow maintainers | lifecycle model, concept language | Medium | workflow or architecture changes |
| Host guidance | `docs/hosts/*.md`, `docs/guides/using-hvn-with-*.md` | Host adapter maintainers | install, host behavior, runtime adaptation | Medium | host adapter or install change |
| Install lifecycle | `INSTALL.md`, install docs, install examples | Install maintainers | onboarding, local/global install, verification | High | installer, verifier, update, uninstall changes |
| Docs maintenance | `docs/docs-automation.md`, `docs/wiki-maintenance.md`, `docs/staleness-detection.md`, templates, audit scripts | Maintainers | docs freshness loop | High | new docs system behavior, new audit rule |

## Review Practice

When a change lands in one of these areas, update the relevant owner row if responsibility or trigger conditions changed.
