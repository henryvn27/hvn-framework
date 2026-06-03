# Ship Checklist

## Release Summary

State what is being released in concrete product language.

## Release Surface

- Where does a user see this? (App Store/TestFlight build, Vercel URL, tag, binary, etc.)

## Release State

- local build passed:
- archive created:
- export created:
- uploaded or deployed:
- processed or visible:
- distributed or publicly reachable:

Keep these states separate. Do not collapse them into one generic "shipped" claim.

## Gates

- Spec acceptance criteria satisfied
- Review complete
- Required QA complete
- Security review complete when applicable
- Validation commands run
- Changelog or release notes updated

## Verification Evidence

List the exact commands, screenshots, reports, or manual evidence.

For Apple/TestFlight work, include exact upload and visibility evidence.
For Vercel work, include preview URL and claim URL when relevant.

## Distribution Or Deploy Ops

- TestFlight groups/testers/public link state:
- App Store Connect or TestFlight metadata updated:
- Vercel preview vs production:

## Abort Criteria

List the “do not ship if…” conditions. Keep it short and real.

## Rollback Or Recovery

Explain how to recover if release causes problems.

## Known Risks

List risks accepted for release without smoothing or minimization.

## Follow-Up Work

List issues or tasks that should continue after release.

## Anti-Generic Check

- Remove any launch language that sounds impressive but does not help a real operator decide whether to ship.
- Use the product's actual release surface, user flow, and blocker language.
