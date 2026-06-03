# Integration Recommendation Policy

Supported is not the same as recommended.

ORCA Framework may support many tools, but it should recommend only a smaller set when the user's use case strongly fits the evidence-backed default.
The deciding question is not "can ORCA Framework support this?" but "does surfacing this reduce more friction than it creates?"

## Core Rule

Recommend a tool only when:

- the use case is clear enough
- the fit is strong enough
- the recommendation is backed by ORCA Framework's researched paved-road guidance
- the tool helps the user's actual goal rather than just being popular

Stay neutral when:

- the use case is unclear
- the fit is weak or mixed
- multiple tools are plausible and no strong default exists
- the user did not ask for stack guidance

Switch to setup-help mode when:

- the user already chose the tool
- the user asked to configure or validate a specific integration
- the tool is not ORCA Framework's top default, but it is still compatible with the user's goal

## NotebookLM Rule

NotebookLM should generally be:

- recommended only when the workflow is clearly knowledge-heavy, research-heavy, or notebook-oriented
- supported when the user explicitly asks for it
- supported when the user already uses it
- kept out of generic stack guidance when the fit is weak or unclear

Do not treat NotebookLM like a default app-stack integration.

## Graph And Vault Rule

Graphify, Obsidian graph views, and graph-style vault tooling should generally be:

- suggested only when the vault is large, fragmented, or hard to understand
- supported when the user explicitly asks for them
- avoided when direct vault inspection is already enough

Do not treat graph tooling as a baseline setup requirement.

## Recommendation Priorities

1. detect the use case
2. decide whether recommendation mode is warranted
3. recommend only strong-fit tools
4. explain why they fit
5. avoid unrelated suggestions
6. respect explicit user tool choices
7. prefer the lower-friction path when two compatible options are close
