# Example Goal From Spec

## Spec Summary

Add password reset email support with acceptance criteria for request, email delivery stub, token validation, and reset confirmation.

## Goal Contract Summary

Objective: implement the approved password reset flow until all acceptance criteria pass.

Completion condition: unit tests for reset token creation and validation pass, request flow is covered by integration test, and manual smoke notes are attached.

Verification: `npm test -- auth-reset` exits 0 and the smoke checklist is filled.
