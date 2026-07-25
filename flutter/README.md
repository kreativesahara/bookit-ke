# Bookit KE — Flutter

A Flutter port of the Bookit KE booking platform for local service providers in Kenya.

## Getting started

```bash
cd flutter
flutter pub get
flutter run
```

> Requires Flutter SDK 3.0+ (not installed in the Bolt environment — build/verify on a machine with Flutter installed).

## Structure

- `lib/main.dart` — app entry + bottom navigation
- `lib/screens/` — Home, Services, Bookings, Profile
- `lib/widgets/` — reusable UI components
- `lib/services/` — Supabase client wrapper
