# First 10 Minutes

This is the shortest path from "I heard about ORCA" to "I saw it do something real."

## Minute 1: Clone The Repo

```sh
git clone https://github.com/henryvn27/orca-hvn.git
cd orca-hvn
```

## Minute 2: Validate The Repo

```sh
./scripts/validate-repo.sh
```

Expected result: `validate-repo: ok`

## Minute 3: Install ORCA Locally

```sh
./install/install.sh --mode local --target ./.orca-hvn
export PATH="$(pwd)/.orca-hvn/bin:$PATH"
```

## Minute 4: Verify And Doctor

```sh
./install/verify-install.sh --target ./.orca-hvn
./install/doctor.sh --target ./.orca-hvn
```

Expected result: install verified and doctor passes.

## Minute 5: Choose Your First Path

### Option A: Personalized Demo

Use [ORCA Demo](demo.md) if you want ORCA to ask a few questions and then turn your answers into a real `/goal` prompt.

### Option B: Core Workflow

Use the default path:

`orca-onboard -> orca-spec -> orca-plan -> orca-build -> orca-review`

## Minute 6 To 10: Prove It Works

Choose one small real task and have ORCA finish it.

Good examples:

- shape a feature into a usable spec
- break a project into milestone phases
- build one small vertical slice
- generate a personalized demo concept and execution plan

## If You Feel Overwhelmed

- read [Start Here](start-here.md)
- use the [Beginners Guide](guides/beginners-guide.md)
- use [Explanation Mode](explanation-mode.md) when you want ORCA to explain what is happening
