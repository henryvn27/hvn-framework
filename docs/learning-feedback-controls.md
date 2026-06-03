# Learning Feedback Controls

Adaptive guidance is on by default, but it should be easy to reduce or disable.

## Modes

- `full adaptive help`: normal ORCA Framework coaching behavior
- `light suggestions only`: only brief nudges in high-value moments
- `only when asked`: no proactive coaching
- `off`: disable the learning-help layer

## User Control Rule

- respect opt-out immediately
- do not use guilt language
- do not argue with the user about disabling help
- allow later re-enable without ceremony

## Command Surface

- `orca-learning` to inspect or set the learning-help mode
- `orca-feedback` to request or suppress a specific coaching response

These same surfaces may also be used to tighten or loosen ORCA's involvement style for the current run, such as:

- more check-ins
- fewer check-ins
- ask before goal or background mode
- keep going unless blocked

These controls affect the local instance loop. They do not directly change framework-wide policy.
