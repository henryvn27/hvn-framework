# Runtime Adaptation

Runtime adaptation is how HVN changes its execution path based on the current harness and the maintained compatibility knowledge.

Principle:

> Same HVN workflow intent, different execution path depending on the harness.

## What It Is

Runtime adaptation means HVN:

- identifies or infers the current harness
- reads the relevant harness capability profile
- chooses the best supported path
- falls back safely when support is partial or unclear
- avoids recommending unsupported features

## What It Is Not

Runtime adaptation is not static documentation. Static docs describe possible paths. Runtime adaptation chooses one path at decision time.

## Source Of Truth

The compatibility layer is the source of truth:

- [compatibility matrix](compatibility-matrix.md)
- [harness capability profiles](harness-capability-profiles.md)
- [harness watch](harness-watch.md)

Scheduled research updates compatibility knowledge. Runtime adaptation consumes reviewed compatibility knowledge.

## Runtime Rule

If support is:

- `supported`: HVN may recommend the capability when the task is a good fit
- `partial`: HVN may use it with caveats and explicit fallback
- `not supported`: HVN should not recommend it as the default path
- `unclear`: HVN should stay conservative and use the generic safer path

## Review Gate

Newly detected support should not become a runtime default until it has been reviewed or classified as `Adopt now`. This keeps research updates from silently changing behavior before maintainers agree.
