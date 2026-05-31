# Bad Goal Versus Good Goal

## Bad Goal

"Modernize the repo."

Why it fails:

- too broad
- no completion condition
- no verification method
- unsafe scope

## Good Goal

"Complete milestone 1 of the modernization spec: add characterization tests for invoice discount rules until `npm test -- billing-discounts` exits 0 and no production code is changed."

Why it works:

- bounded
- testable
- tied to a spec
- includes a constraint
