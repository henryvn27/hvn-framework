# Beginner's Guide To ORCA

This guide is for someone who has used a vibe-coding tool like Lovable, but feels overwhelmed by Codex or Claude Code.

You do not need to become a terminal power user before ORCA is useful.
The point of ORCA is to give you one stable workflow so you are not trying to learn:

- your project
- Codex or Claude Code
- agent prompting
- planning
- QA

all at once.

## The Mental Model

Think of the stack like this:

- Codex or Claude Code: the engine
- ORCA: the workflow and coaching layer
- your project: the thing you actually care about

If you are new, do not try to learn every harness command first.
Learn the ORCA path first.

## The Only Path You Need At First

Start here:

`orca-onboard -> orca-spec -> orca-plan -> orca-build -> orca-review`

What those mean in plain English:

1. `orca-onboard`
   ORCA figures out what you are actually trying to do.
2. `orca-spec`
   ORCA writes down what should happen and what should not.
3. `orca-plan`
   ORCA breaks that into steps.
4. `orca-build`
   ORCA does the implementation work.
5. `orca-review`
   ORCA checks for obvious bugs, regressions, and quality problems.

If you only remember one thing, remember this path.

## What To Expect As A Beginner

At first, ORCA should:

- ask a few useful setup questions
- explain terms briefly
- hide most optional features
- give you one next step instead of five
- tell you what "done" means for the current phase

It should not:

- dump a huge command catalog on you
- assume you know Codex or Claude Code terminology
- make you choose between ten modes before first success
- act like you need to be "technical enough" to begin

## Good Beginner Preferences

If ORCA asks how you want it to behave, good starting answers are:

- explanation: `explain briefly`
- jargon: `plain language` or `mixed`
- question style: `balanced`
- decision style: `short rationale`
- involvement: `keep me in the loop at meaningful steps`
- unattended work: `ask before switching to goal or background mode`

That usually gives enough support without turning the workflow into a lecture.

## How To Learn Without Getting Stuck

Use this rule:

- learn the current step
- learn why it exists
- learn one adjacent step only after success

Example:

- first learn `orca-onboard`
- after that feels normal, learn `orca-spec`
- after you complete the five-command path once, then learn one extra thing such as:
  - `orca-test-blind`
  - `orca-goal`
  - `orca-explain`

Do not try to learn delegation, background mode, evals, and integrations on day one.

## What To Say To ORCA

Good beginner prompts:

- `Help me figure out what I should build first`
- `I have an app idea but I need structure`
- `I want to change this feature but I do not know the right workflow yet`
- `Explain this briefly and then do the next step`
- `Keep the wording nontechnical`

Good correction prompts:

- `ask fewer questions`
- `explain more`
- `keep it concise`
- `show me options`
- `do not explain unless I ask`

You do not need perfect prompting. ORCA should adapt.

## When Codex Or Claude Code Feels Overwhelming

That usually means one of these:

- too many host-specific terms too early
- too many choices before first success
- too much tool or setup detail before the real task is clear

The fix is usually not "learn the host better first."
The fix is to return to the ORCA path and reduce scope:

1. `orca-onboard`
2. `orca-spec`
3. `orca-plan`
4. do one small build

## How You Become Advanced

ORCA should make you better through repetition.

You are moving up when:

- you need less explanation
- you can spot a vague task and tighten it quickly
- you know whether to spec, plan, build, or review next
- you start asking for more advanced paths like QA, goal mode, or delegation

You should not need to "graduate" from ORCA.
The same system should still work when you become experienced.

## If You Want To Be Very Hands-On Or Very Hands-Off

ORCA should support both ends cleanly.

If you want to stay very involved:

- ask for reviewable checkpoints
- ask ORCA to explain changes as it goes
- avoid goal mode for work you want to inspect step by step

If you want ORCA to run with less supervision:

- prefer milestone-sized work with a clear spec
- allow major-checkpoint summaries instead of step-by-step narration
- use goal mode only when the work is bounded and verifiable

You can change this preference later.
You do not have to pick one forever.

## Best Next Pages

- [install-for-beginners.md](../install-for-beginners.md)
- [first-run.md](../first-run.md)
- [first-workflow.md](../first-workflow.md)
- [explanation-mode.md](../explanation-mode.md)
- [command-index.md](../command-index.md)
