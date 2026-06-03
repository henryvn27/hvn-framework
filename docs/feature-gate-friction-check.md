# Feature-Gate Friction Check

Every meaningful ORCA Framework addition should pass a friction check before it becomes part of the visible framework surface.

## Required Questions

Every new feature, integration, command, prompt pattern, or automation should answer:

- what friction does this remove?
- what setup or maintenance burden does it add?
- who actually benefits?
- when should it appear?
- should it be default, contextual, optional, advanced, or internal?
- what lighter-weight alternative exists?
- does it remove more friction than it creates?

## Default Outcomes

- `default`: broadly useful and low-friction
- `contextual`: useful only when the current use case matches
- `optional`: available but not surfaced unless asked for or clearly helpful
- `advanced`: hidden until the user or workflow has earned the complexity
- `internal`: maintained by ORCA Framework but not surfaced directly to most users

See [feature-visibility-tiers.md](feature-visibility-tiers.md).

## Review Rule

If a feature cannot clearly justify its setup burden, recommendation surface, or maintenance cost, it should be:

- redesigned
- demoted
- hidden behind progressive disclosure
- or removed

Use [../templates/friction-check.md](../templates/friction-check.md).
