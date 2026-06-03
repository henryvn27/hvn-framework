# Install For Beginners

Use this page if you want ORCA explained in plain language and in the safest order.

## What You Are Doing

You are installing ORCA so you can use its commands and docs without guessing how the framework is supposed to work.

You do not need to understand every feature before you start.

## Beginner Path

1. Answer the short setup interview.
2. Read [install-prerequisites.md](install-prerequisites.md).
3. Download the repo with git.
4. Run local install into `./.orca-framework`.
5. Run the verification command.
6. Skip plugins unless you already know you need one.
7. Skip harness setup unless you already know which harness you use.
8. Run [first-run.md](first-run.md).

## Short Setup Interview

Answer these before you start:

1. Are you just trying ORCA, or do you want a setup you will keep using?
2. Which harness do you plan to use first?
3. Do you need GitHub or Linear on day one?
4. Do you want the safest guided path or the fastest path?
5. What is the first real task you want ORCA to help with?

## Exact Commands

```sh
git clone https://github.com/henryvn27/orca-framework.git
cd orca-framework
./install/install.sh --mode local --target ./.orca-framework
./install/verify-install.sh --target ./.orca-framework
./install/doctor.sh --target ./.orca-framework
```

## What Success Looks Like

You should see messages that say the install worked and the doctor check passed.

Then continue to:

1. [first-run.md](first-run.md)
2. [first-success-check.md](first-success-check.md)
3. [first-workflow.md](first-workflow.md)

## Things You Can Skip

You can safely skip these on day one:

- plugins you do not understand yet
- advanced integrations
- extra harnesses
- global install

## If Something Fails

Read:

- [install-troubleshooting.md](install-troubleshooting.md)
- [common-install-errors.md](common-install-errors.md)
- [reset-and-retry.md](reset-and-retry.md)
