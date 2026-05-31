# Onboarding Question Rounds Example

## Command

```text
/hvn:onboard
```

## Opening

```text
I’ll collect only the context needed for a first useful spec. First question: who is the primary user, and what should they be able to do?
```

## Round 1 Answer

```text
Primary user is a small business owner. They should be able to upload a CSV and see a clean invoice summary.
```

## Reflection And Round 2

```text
Got it: small business owner, CSV upload, invoice summary. What should be out of scope for the first version?
```

## Round 2 Answer

```text
No payments, no customer portal, no recurring invoices. Just upload, validate, summarize, and export PDF.
```

## Stop Or Continue

The agent has enough for a first spec if the target surface and success signal are known. It asks one compact factual batch:

```text
Two quick details before I synthesize: is this for an existing repo, and what output proves the flow works?
```

## Final Artifact

The agent emits `templates/onboarding-intake.md` with:

- current objective
- questions asked
- answers received
- inferred constraints
- unresolved questions
- ready-for-spec decision
