# QA Brief Question Flow Example

## Situation

A tester needs enough context to run QA without accidentally contaminating a blind pass.

## Command

```text
/hvn:blind-qa-brief
```

## First Question

```text
What platform and launch target should the tester use?
```

## Answer

```text
Web app at http://localhost:5173, desktop Chrome viewport around 1440px wide.
```

## Second Question

```text
Is this blind QA or briefed QA, and what context is the tester allowed to know?
```

## Answer

```text
Blind QA. They can know only that they should try to export an invoice PDF.
```

## Artifact

The agent creates `templates/qa-brief-intake.md`:

```text
QA mode: blind QA
Platform: web
Build, URL, or executable: http://localhost:5173
Device, simulator, or viewport: desktop Chrome, about 1440px wide
Target flow: export an invoice PDF
Allowed context: one-sentence mission only
Context explicitly withheld: spec, plan, implementation notes, run memory
Ready for QA: yes
QA command: hvn-test-blind
```

## Rule

Run memory can be updated after the blind QA report is saved, but it must not be included in the blind tester's input.
