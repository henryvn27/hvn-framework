# Mobile Vs Web Integrations

ORCA-HVN should not flatten web and mobile into the same integration story.

## Deployment Versus Distribution

- web apps usually optimize around deploy and rollback paths
- mobile apps optimize around build, signing, store submission, OTA updates, and device testing

## Auth Differences

- web auth often relies on browser redirects, cookies, SSR/session flows, and edge middleware
- mobile auth often relies on native deep links, token storage, app lifecycle handling, and platform SDK constraints

## Payments Differences

- web billing often uses Stripe, Paddle, or LemonSqueezy
- mobile digital subscriptions and in-app purchases usually need app-store billing flows, with RevenueCat often acting as the orchestration layer
- do not recommend a normal Stripe-only path for app-store digital purchases inside native mobile apps
- Plaid is not a subscription processor; it is a financial-data or bank-linking integration

## Push And Messaging

- web notifications and mobile push are not the same workflow
- mobile push usually needs native platform setup, credential configuration, and device testing
- Expo, React Native, Firebase, and OneSignal introduce different push constraints than a browser-only stack

## Data And Offline Behavior

- web apps often assume server-first data access
- mobile apps often need stronger decisions around offline behavior, local cache, auth refresh, and background sync

## Analytics And Monitoring

- web analytics flows usually start with browser events and page views
- mobile analytics needs screen, session, crash, lifecycle, push, and attribution handling
