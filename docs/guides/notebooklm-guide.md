# NotebookLM Guide

NotebookLM is an optional ORCA-HVN knowledge and research integration.

## When To Use It

NotebookLM is a good fit when the user is:

- synthesizing lots of source material
- building a research notebook around a product or market
- studying technical references
- organizing project knowledge for later questioning and summarization

NotebookLM is a weak fit for:

- generic app infrastructure choices
- deployment routing
- billing setup
- execution or CI workflows

## ORCA-HVN Recommendation Rule

ORCA-HVN should suggest NotebookLM only when:

- the user explicitly asks for it
- the user already uses it
- or the workflow is clearly notebook-oriented and research-heavy

Otherwise, treat it as supported but not recommended.

## How To Use It Inside ORCA-HVN

- use it as a research surface during business ideation
- use it to digest long technical or product reference sets
- use it as a controller-agent knowledge helper when the user already relies on it
- use it as a project knowledge notebook when the team wants document-centered recall

## Integration Modes

See [../notebooklm-integration-modes.md](../notebooklm-integration-modes.md).

## Setup Flow

1. Determine whether the user is on the enterprise path or a community path.
2. Validate access and notebook reachability.
3. Decide whether NotebookLM is the live knowledge surface or just a supplemental notebook.
4. Connect it to the relevant ORCA-HVN workflow.
5. Record caveats instead of pretending all modes are equally stable.
