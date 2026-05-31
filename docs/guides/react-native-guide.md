# React Native Guide

React Native is a first-class ORCA-HVN mobile surface, whether used through Expo-first workflows or with deeper native customization.

## Default ORCA-HVN Bias

Prefer Expo plus React Native unless the app clearly needs a more custom native path from the start.

## What Changes From Web

- build and release are native-platform operations
- auth and deep links need mobile-specific handling
- push needs real iOS and Android setup
- subscription guidance must respect app-store billing reality

## Typical Companion Stack

- Expo or native React Native workflow
- EAS or another build pipeline
- Supabase or Firebase
- RevenueCat
- OneSignal
- Sentry
