# Quickstart

This is the shortest path to first value.

If you want one default ORCA path instead of a menu of options, read [first-workflow.md](first-workflow.md) first.

If you want the shortest explanation of the framework philosophy, read [intro-guide.md](intro-guide.md).

The point of this path is not just speed. It is also to let a new user learn the ORCA workflow directly inside ORCA, without needing someone else to walk them through every stage.

## 1. Clone And Validate

```sh
git clone https://github.com/henryvn27/orca-hvn.git
cd orca-hvn
./scripts/validate-repo.sh
```

## 2. Pick Your Mode

- Linear-first: use ORCA-HVN's default system of record
- opt-out: map the workflow to your own tracker or repo docs

## 3. Run The Default Intro Path

Use these five commands in order:

1. `orca-onboard`
2. `orca-spec`
3. `orca-plan`
4. `orca-build`
5. `orca-review`

Only branch into other workflows after this path is clear.

## 4. Read Only What You Need Next

- setup: [linear-setup.md](linear-setup.md), [external-tool-setup.md](external-tool-setup.md)
- paths: [choose-your-path.md](choose-your-path.md)
- commands: [command-index.md](command-index.md)
- guides: [guides/](guides)

## 5. Validate Changes

Use:

```sh
./scripts/validate-repo.sh
```

## First Good Outcome

A good first session is not "learn every feature." It is:

- one work item
- one ORCA path
- one command per stage
- one reviewable outcome

A good onboarding experience should make the user feel like ORCA is teaching the workflow while they use it, not like they are memorizing a separate system before real work can start.
