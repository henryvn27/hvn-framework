# Restore After Failed Goal

## Situation

A goal run failed after partial implementation and an unclear harness-side error.

## Restore Use

- restore from the last approved checkpoint
- keep the prior receipt and trace for debugging
- continue with the portable milestone loop if host goal behavior remains unclear

## Rule

Restore should recover a safe workflow state, not pretend the failed run never happened.
