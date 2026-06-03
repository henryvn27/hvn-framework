# Expo Guide

Expo is a first-class ORCA Framework mobile path.

## Why ORCA Framework Treats Expo Seriously

- fast setup and iteration
- Android, iOS, and web reach from one codebase
- clear development loop for device, simulator, and local iteration
- EAS build, submit, and update workflows for production operations

## Typical Companion Stack

- React Native
- Expo EAS
- Supabase or Firebase
- RevenueCat for mobile subscriptions
- OneSignal for push
- Sentry for crashes and runtime errors

## Workflow Shift

Expo changes the workflow by making:

- device iteration easier early
- EAS build and update paths central later
- mobile-specific constraints around push, auth, and store billing impossible to ignore

## Fresh Scaffold Audit Warnings

A newly scaffolded Expo app can still show upstream dependency audit warnings.

Treat those warnings as a follow-up queue, not as proof that scaffold creation failed:

- record the exact warning count and severity
- finish the scaffold verification first
- decide whether the warnings are upstream transient noise or app-local dependency choices
- create a follow-up issue if the warnings remain after the first working app state is confirmed
