<p align="center">
  <img src="assets/images/fleetpilot-logo.png" alt="FleetPilot" width="128" height="128">
</p>

<h1 align="center">FleetPilot</h1>

<p align="center">
  <strong>Open-Source MDM Management Client for Kandji</strong><br>
  Manage your entire Apple device fleet from anywhere
</p>

<p align="center">
  <a href="https://github.com/Kiefer-Networks/FleetPilot/releases"><img src="https://img.shields.io/github/v/release/Kiefer-Networks/FleetPilot?style=flat-square" alt="Release"></a>
  <a href="LICENSE"><img src="https://img.shields.io/badge/license-MIT-green?style=flat-square" alt="License: MIT"></a>
  <a href="https://github.com/Kiefer-Networks/FleetPilot/issues"><img src="https://img.shields.io/github/issues/Kiefer-Networks/FleetPilot?style=flat-square" alt="Issues"></a>
  <a href="https://github.com/Kiefer-Networks/FleetPilot/stargazers"><img src="https://img.shields.io/github/stars/Kiefer-Networks/FleetPilot?style=flat-square" alt="Stars"></a>
</p>

<p align="center">
  <a href="https://fdroid.kiefer-networks.de/fdroid/repo/"><img src="https://img.shields.io/badge/F--Droid-repo-1976D2?style=flat-square&logo=f-droid" alt="F-Droid Repo"></a>
  <a href="https://kiefer-networks.de"><img src="https://img.shields.io/badge/by-Kiefer%20Networks-blue?style=flat-square" alt="Kiefer Networks"></a>
  <a href="https://de.liberapay.com/beli3ver"><img src="https://img.shields.io/badge/donate-Liberapay-F6C915?style=flat-square&logo=liberapay" alt="Donate via Liberapay"></a>
</p>

---

FleetPilot is a native Flutter client for [Kandji](https://kandji.io) that brings full MDM management to your phone, tablet, and desktop. Browse devices, manage blueprints, handle ADE integrations, track vulnerabilities, and execute device actions — all from a single app with Material Design 3.

## Screenshots

<!-- TODO: Add screenshots -->

## Features

| Feature | Description |
|---------|-------------|
| **Device Management** | Browse, search, and filter all enrolled Mac, iPhone, iPad, and Apple TV devices |
| **Device Details** | 8-tab detail view: Overview, Apps, Status, Activity, Commands, Secrets, Notes, Location |
| **Device Actions** | Lock, Restart, Shutdown, Erase, Lost Mode, Remote Desktop, and 10+ more MDM commands |
| **Blueprint Management** | Create, edit, delete blueprints; manage library items; download OTA enrollment profiles |
| **ADE Integrations** | Full Automated Device Enrollment: create, renew tokens, upload `.p7m` files, browse devices |
| **User Management** | Browse users with cursor pagination, search, filter archived, view assigned devices |
| **Vulnerability Management** | Browse CVEs by severity, drill into CVSS scores, affected devices, and software |
| **Threat Detection** | View detected threats with classification, file/process details, and detection status |
| **Behavioral Detections** | Browse behavioral threat detections with severity and process context |
| **Tag Management** | Full CRUD with 10 color presets for visual device organization |
| **Audit Log** | Tenant-wide audit events with search by type, admin, device, or user |
| **Library Items** | Activity log and per-device deployment status for all library items |
| **Licensing Overview** | Device limits, usage counts, and platform breakdown |
| **Multi-Tenant** | Multiple Kandji profiles (production, staging, different orgs) with instant switching |
| **26 Languages** | Arabic, Chinese, Croatian, Czech, Danish, Dutch, English, Finnish, French, German, Hindi, Indonesian, Italian, Japanese, Korean, Norwegian, Polish, Portuguese, Romanian, Russian, Spanish, Swedish, Thai, Turkish, Ukrainian, Vietnamese |
| **No Tracking** | No analytics, no telemetry, no ads — fully open-source |

## Platforms

| Platform | Status |
|----------|--------|
| Android | Supported |
| iOS / iPadOS | Supported |
| macOS | Supported |

## Install via F-Droid Repo

Add the Kiefer Networks F-Droid repository to your F-Droid client:

```
https://fdroid.kiefer-networks.de/fdroid/repo/
```

## Install via Obtainium

1. Open [Obtainium](https://github.com/ImranR98/Obtainium) and tap **Add App**
2. Enter the source URL:
   ```
   https://github.com/Kiefer-Networks/FleetPilot
   ```
3. Set **Release asset filter** to `arm64-v8a` (or your architecture)
4. Tap **Add** — Obtainium will track new releases automatically

## Security

| Layer | Implementation |
|-------|---------------|
| Authentication | Mandatory 6-digit PIN on first setup; cannot be removed |
| Biometrics | Optional Face ID / Touch ID / fingerprint unlock |
| Credential Storage | Platform-native secure storage (iOS Keychain, Android EncryptedSharedPreferences) |
| PIN Storage | SHA-256 hashed; plaintext PINs are never persisted |
| Secret Access | Device secrets (FileVault keys, recovery passwords, bypass codes) require biometric/PIN |
| Destructive Actions | Erase and delete operations require typing the device name to confirm |
| API Tokens | Never stored in plaintext or logged |

## Architecture

- **Framework:** Flutter 3.41+ / Dart 3.11+
- **State Management:** Riverpod (FutureProvider, StateNotifier, family modifiers)
- **Navigation:** go_router with nested ShellRoute
- **HTTP Client:** Dio with auth, rate-limit, and logging interceptors
- **Data Classes:** Freezed v3 for immutable entities with JSON serialization
- **Secure Storage:** flutter_secure_storage (Keychain / Android Keystore)
- **Biometrics:** local_auth (Face ID, Touch ID, fingerprint)
- **Maps:** flutter_map + OpenStreetMap (no Google dependency, F-Droid compatible)
- **Design:** Material 3 with adaptive light/dark theme

Clean Architecture with feature-based folder structure:

```
lib/
├── core/           # Constants, networking, DI, cache, utilities
├── data/           # API data sources, repository implementations
├── domain/         # Entities (30+ Freezed classes), repository contracts, use cases
├── presentation/   # Pages, providers, theme, reusable widgets
└── l10n/           # 25 language ARB files
```

## Responsive Design

- **Phone** (< 600dp): Bottom navigation bar with 4 tabs
- **Tablet / Desktop** (>= 600dp): Navigation rail on the left side
- Full iPadOS multitasking and window mode support
- Dialog and sheet layouts adapt to available screen width

## Building from Source

### Prerequisites

- Flutter SDK 3.41+ ([install guide](https://docs.flutter.dev/get-started/install))
- Dart SDK 3.11+
- A Kandji API token with appropriate permissions
- Android Studio / Xcode for device builds

### Clone

```bash
git clone https://github.com/Kiefer-Networks/FleetPilot.git
cd FleetPilot
```

### Install dependencies and generate code

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter gen-l10n
```

### Build

```bash
# Android (per-ABI, recommended)
flutter build apk --release --split-per-abi

# Android (universal)
flutter build apk --release

# Android App Bundle
flutter build appbundle --release

# iOS
flutter build ios --release

# macOS
flutter build macos --release
```

### Run tests

```bash
flutter test
```

## First Launch

1. Enter your Kandji tenant subdomain, select region (US or EU), and paste your API token
2. FleetPilot verifies the connection against the Kandji API
3. Set a mandatory 6-digit PIN (optionally enable biometric unlock)
4. You're in — browse your device fleet

## API Coverage

| API Area | Endpoints | Status |
|----------|-----------|--------|
| Devices | List, detail, actions, apps, status, activity, commands, secrets, notes, lost mode | Full |
| Blueprints | List, create, edit, delete, library items, templates, OTA profiles | Full |
| Users | List, detail, delete | Full |
| Tags | List, create, edit, delete | Full |
| ADE Integrations | List, create, edit, delete, renew token, devices, public key | Full |
| Threats | List with search | Full |
| Vulnerabilities | List, detail, affected devices, affected software | Full |
| Behavioral Detections | List with search | Full |
| Audit Log | List with search and date filtering | Full |
| Licensing | Tenant license info | Full |
| Library Items | Activity, deployment status | Full |

## Localization

Available in 26 languages:

Arabic, Chinese, Croatian, Czech, Danish, Dutch, English, Finnish, French, German, Hindi, Indonesian, Italian, Japanese, Korean, Norwegian, Polish, Portuguese, Romanian, Russian, Spanish, Swedish, Thai, Turkish, Ukrainian, Vietnamese

Translation files are in `lib/l10n/`. Contributions for additional languages are welcome.

## Contributing

1. Fork the repository
2. Create a feature branch
3. Follow the existing code style and architecture patterns
4. Add localization strings for all languages
5. Run `dart run build_runner build --delete-conflicting-outputs` after modifying entities
6. Run `flutter gen-l10n` after modifying ARB files
7. Test on both phone and tablet layouts
8. Submit a pull request

## Donate

If you find FleetPilot useful, consider supporting development:

[Donate via Liberapay](https://de.liberapay.com/beli3ver)

## License

Copyright (C) 2025-2026 [Kiefer Networks](https://kiefer-networks.de)

This project is licensed under the [MIT License](LICENSE).
