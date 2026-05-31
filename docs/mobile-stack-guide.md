# Mobile Stack Guide

Expo and React Native are first-class in ORCA-HVN.

The default mobile bias is:

- Expo
- React Native
- Expo EAS
- Supabase or Firebase
- RevenueCat when native digital subscriptions matter
- OneSignal for push
- Sentry for crash and runtime monitoring

## Why This Is The Default

- shared JavaScript and TypeScript skill path
- fast setup and iteration
- practical build and release workflows through EAS
- clear push, auth, and subscription companions

## Key Mobile Decisions

- managed or bare/native customization path
- Supabase versus Firebase as the primary app backend
- RevenueCat versus no subscriptions
- OneSignal versus lighter notification needs
- push, deep-link, and auth flow decisions before shipping

## First Pages To Read

- [guides/expo-guide.md](guides/expo-guide.md)
- [guides/react-native-guide.md](guides/react-native-guide.md)
- [mobile-vs-web-integrations.md](mobile-vs-web-integrations.md)
- [integration-validation.md](integration-validation.md)
