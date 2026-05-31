# Example Business Logic Extraction

## Source Area

Legacy pricing service.

## Extracted Rules

- annual accounts receive a renewal discount only when account status is active
- grace-period invoices suppress late fees for seven days
- region-specific tax is applied after discounts

## Evidence

- service code branch conditions
- fixture names
- historical invoice examples

## Regression Candidates

- annual active account renewal
- grace-period invoice
- region-specific tax after discount
