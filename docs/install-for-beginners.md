# Install For Beginners

Use this page if you want ORCA explained in plain language and in the safest order.

## What You Are Doing

You are installing ORCA so you can use its commands and docs without guessing how the framework is supposed to work.

You do not need to understand every feature before you start.

## Beginner Path

1. Read [install-prerequisites.md](install-prerequisites.md).
2. Download the repo with git.
3. Run local install into `./.orca-hvn`.
4. Run the verification command.
5. Skip plugins unless you already know you need one.
6. Skip harness setup unless you already know which harness you use.
7. Run [first-run.md](first-run.md).

## Exact Commands

```sh
git clone https://github.com/henryvn27/orca-hvn.git
cd orca-hvn
./install/install.sh --mode local --target ./.orca-hvn
./install/verify-install.sh --target ./.orca-hvn
./install/doctor.sh --target ./.orca-hvn
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
