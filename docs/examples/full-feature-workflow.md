# Full Feature Workflow Example

## Fuzzy Request

```text
Make exports better for invoices.
```

## 1. Discuss / Onboard

The agent starts with `hvn-onboard` and asks:

```text
Which export flow is causing problems, and what should users be able to do after the change?
```

The user answers:

```text
PDF invoice export. Users expect a preview before the file downloads.
```

The onboarding artifact records:

- problem: immediate download causes confusion
- intended outcome: preview before download
- target user: invoice admin
- open question: whether existing direct download must remain

## 2. Research When Needed

The agent inspects the repo and existing export flow with `hvn-discover`. No external research is needed.

## 3. Create Or Refine Spec

`hvn-spec` creates a spec with:

- v1: add preview step and preserve direct download path
- v2: customize PDF templates
- out of scope: payments, invoice editing, recurring invoices

## 4. Split Scope And Phases

`templates/requirements-split.md` records current, later, and excluded work.

## 5. Plan Execution

`hvn-plan` creates milestones:

1. inspect current export route and preview component options
2. add preview state
3. connect download action
4. verify acceptance criteria and regression flows

## 6. Execute Against Spec

`hvn-build` reads the approved spec before editing and implements only the preview flow.

## 7. Verify Against Spec

Verification checks:

- preview appears before download
- existing direct download is still reachable
- errors are visible
- keyboard flow works

## 8. Update Memory, Linear, And Follow-Up Scope

Run memory records the active spec, completed milestones, verification, and v2 follow-up for PDF template customization.
