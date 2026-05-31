# Integration Recommendation Policy

Supported is not the same as recommended.

ORCA-HVN may support many tools, but it should recommend only a smaller set when the user's use case strongly fits the evidence-backed default.

## Core Rule

Recommend a tool only when:

- the use case is clear enough
- the fit is strong enough
- the recommendation is backed by ORCA-HVN's researched paved-road guidance
- the tool helps the user's actual goal rather than just being popular

Stay neutral when:

- the use case is unclear
- the fit is weak or mixed
- multiple tools are plausible and no strong default exists
- the user did not ask for stack guidance

Switch to setup-help mode when:

- the user already chose the tool
- the user asked to configure or validate a specific integration
- the tool is not ORCA-HVN's top default, but it is still compatible with the user's goal

## Recommendation Priorities

1. detect the use case
2. decide whether recommendation mode is warranted
3. recommend only strong-fit tools
4. explain why they fit
5. avoid unrelated suggestions
6. respect explicit user tool choices
