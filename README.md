<p align="center">
  <img src="assets/images/fleetpilot-logo.png" alt="FleetPilot Logo" width="128" height="128">
</p>

# FleetPilot

**Open-source mobile MDM management client for [Kandji](https://kandji.io).**

Manage your entire Apple device fleet from anywhere — phones, tablets, and desktops. FleetPilot brings the full power of the Kandji API to a native Flutter app with Material Design 3, multi-tenant support, and enterprise-grade security.

## Screenshots

<!-- TODO: Add screenshots -->

## Features

### Device Management
- Browse, search, and filter all enrolled devices (Mac, iPhone, iPad, Apple TV)
- Filter by platform, supervision status, and Lost Mode
- Real-time device detail view with 7 tabs:
  - **Overview** — hardware, OS, serial number, asset tag, blueprint, assigned user, compliance status
  - **Apps** — all installed applications with version info
  - **Status** — library item and parameter deployment status per device
  - **Activity** — device activity log with timestamps
  - **Commands** — MDM command history with pending/completed/failed status tracking
  - **Secrets** — FileVault recovery key, unlock PIN, recovery lock password, activation lock bypass code (biometric-protected)
  - **Notes** — create, edit, and delete device notes
  - **Location** — map view for devices in Lost Mode
- Full device actions:
  - Lock, Restart, Shutdown, Erase (with typed confirmation for destructive actions)
  - Send Blank Push, Update Inventory, Daily Check-in
  - Reinstall Agent, Renew MDM Profile
  - Set Device Name, Delete User, Unlock Account
  - Enable/Disable Remote Desktop (macOS)
  - Enable/Disable Lost Mode, Play Sound, Update Location, Clear Passcode (iOS/iPadOS)
- Edit device name, asset tag, blueprint assignment, and tags
- Delete device from MDM

### Blueprint Management
- Browse all blueprints with device count
- Create blueprints with name and description
- Edit and delete blueprints
- View and manage assigned library items
- Download OTA enrollment profiles
- Search blueprints by name

### User Management
- Browse all tenant users with cursor-based pagination
- Search by name, email, job title, or department
- Filter archived users
- View user details with assigned devices
- Delete users

### Apple Automated Device Enrollment (ADE)
- List all ADE integrations with token validity status
- **Create new ADE integration** — guided 3-step flow:
  1. Download and copy the public key for Apple Business Manager
  2. Upload the `.p7m` server token file via file picker
  3. Configure phone, email, and default blueprint
- View integration details: org info, token expiry, device count
- Browse enrolled ADE devices with serial, model, and profile status
- Edit integration settings (phone, email, default blueprint dropdown)
- Renew expired tokens with new `.p7m` file upload
- Copy public key for token renewal
- Delete integrations

### Vulnerability Management
- Browse all CVEs detected in your tenant
- Filter by severity: Critical, High, Medium, Low
- Search by CVE ID or affected software
- Drill into CVE details:
  - CVSS score, severity rating, KEV status
  - First and last detection dates
  - Affected devices list
  - Affected software list

### Threat Detection
- Browse detected threats across all devices
- Search by threat name, device, file name, or process
- View threat classification, detection status, and file/process details

### Behavioral Detections
- Browse behavioral threat detections
- Search by threat name, device, classification, or process
- View severity, file path, and parent process context

### Library Items
- Browse all library items grouped by blueprint
- Library item detail with two tabs:
  - **Activity** — deployment activity log
  - **Deployment Status** — per-device installation status

### Tag Management
- Full CRUD for device tags
- 10 color presets for visual organization
- Search tags by name
- Assign tags to devices

### Audit Log
- Browse tenant-wide audit events
- Search by event type, admin, device, or user
- Event details: action, description, timestamp, admin, affected resource

### Licensing Overview
- View tenant licensing info: device limit, devices used, license type
- Device count breakdown by platform (Mac, iPhone, iPad, Apple TV)

## Security

FleetPilot takes security seriously — it's managing your MDM infrastructure after all.

- **Mandatory PIN** — 6-digit PIN is required on first setup and cannot be removed. All users must set a PIN before accessing the app.
- **Biometric Authentication** — optional Face ID / Touch ID / fingerprint unlock as a convenience layer on top of PIN.
- **Secure Storage** — API tokens and PIN hashes stored via platform-native secure storage (iOS Keychain, Android EncryptedSharedPreferences).
- **PIN-Protected Secrets** — device secrets (FileVault keys, recovery passwords, bypass codes) require biometric/PIN verification before viewing.
- **Hashed PINs** — PINs are SHA-256 hashed before storage; plaintext PINs are never persisted.
- **Destructive Action Confirmation** — erase and delete operations require typing the device name to confirm.
- **No Plaintext Credentials** — API tokens are never stored in plaintext or logged.

## Multi-Tenant Support

FleetPilot supports multiple Kandji tenant connections:
- Add profiles for different tenants (production, staging, different orgs)
- Switch between profiles from Settings
- Each profile stores its own subdomain, region (US/EU), and API token
- Credentials verified against the Kandji API before saving

## Architecture

FleetPilot follows **Clean Architecture** with clear separation of concerns:

```
lib/
├── core/                  # Constants, networking, DI, utilities
│   ├── constants/         # API config, storage keys, colors
│   ├── di/                # Riverpod provider definitions
│   ├── errors/            # Failure types, exception mapper
│   ├── extensions/        # String/date extensions
│   ├── network/           # Dio client, interceptors (auth, rate-limit, logging)
│   ├── routing/           # go_router configuration
│   └── utils/             # Biometric service, logger
├── data/                  # Data layer
│   ├── datasources/       # Remote API classes (Device, Blueprint, User, Tenant)
│   └── repositories/      # Repository implementations
├── domain/                # Business logic
│   ├── entities/          # 30+ Freezed data classes
│   ├── repositories/      # Abstract repository contracts
│   └── usecases/          # Use cases (credential verification)
├── presentation/          # UI layer
│   ├── pages/             # Screens organized by feature
│   ├── providers/         # Riverpod state providers
│   ├── theme/             # M3 light/dark theme definitions
│   └── widgets/           # Reusable UI components
└── l10n/                  # Localization (EN, DE, ES)
```

### Key Technology Choices

| Layer | Technology |
|-------|-----------|
| UI Framework | Flutter 3.41+ with Material Design 3 |
| State Management | Riverpod 2.x (FutureProvider, StateNotifier, family modifiers) |
| Navigation | go_router with nested ShellRoute |
| HTTP Client | Dio with auth, rate-limit, and logging interceptors |
| Data Classes | Freezed v3 for immutable entities with JSON serialization |
| Secure Storage | flutter_secure_storage (Keychain / Android Keystore) |
| Biometrics | local_auth (Face ID, Touch ID, fingerprint) |
| Maps | flutter_map + OpenStreetMap (no Google dependency, F-Droid compatible) |
| Localization | flutter_localizations with ARB files |
| File Handling | file_picker for ADE token upload |

## Responsive Design

FleetPilot adapts to all screen sizes:

- **Phone** (< 600dp): Bottom navigation bar with 4 tabs
- **Tablet / iPad / Desktop** (>= 600dp): Navigation rail on the left side
- Scroll positions preserved across tab switches via IndexedStack
- Dialog and sheet layouts adapt to available screen width
- Full iPadOS multitasking and window mode support

## Localization

FleetPilot ships with three languages:

| Language | Code | Status |
|----------|------|--------|
| English | `en` | Complete |
| German (Deutsch) | `de` | Complete |
| Spanish (Espanol) | `es` | Complete |

Language can be switched at runtime from Settings, or it follows the system locale.

## API Coverage

FleetPilot covers the following Kandji API areas:

| API Area | Endpoints | Status |
|----------|-----------|--------|
| Devices | List, detail, actions, apps, status, activity, commands, secrets, notes, lost mode | Full |
| Blueprints | List, create, edit, delete, library items, templates, OTA profiles | Full |
| Users | List, detail, delete | Full |
| Tags | List, create, edit, delete | Full |
| ADE Integrations | List, create (file upload), edit, delete, renew token, devices, public key | Full |
| Threats | List with search | Full |
| Vulnerabilities | List, detail, affected devices, affected software, detections | Full |
| Behavioral Detections | List with search | Full |
| Audit Log | List with search and date filtering | Full |
| Licensing | Tenant license info | Full |
| Library Items | Activity, deployment status | Full |

## Getting Started

### Prerequisites

- Flutter SDK 3.41+
- Dart SDK 3.11+
- A Kandji API token with appropriate permissions
- Android Studio / Xcode for device builds

### Setup

```bash
# Clone the repository
git clone https://github.com/your-org/fleetpilot.git
cd fleetpilot

# Install dependencies
flutter pub get

# Generate code (Freezed entities, Riverpod providers)
dart run build_runner build --delete-conflicting-outputs

# Generate localization files
flutter gen-l10n

# Run on connected device or emulator
flutter run
```

### Building

```bash
# Android
flutter build apk --release
flutter build appbundle --release

# iOS
flutter build ios --release

# macOS
flutter build macos --release
```

### First Launch

1. Enter your Kandji tenant subdomain, select region (US or EU), and paste your API token
2. FleetPilot verifies the connection against the Kandji API
3. Set a mandatory 6-digit PIN (optionally enable biometric unlock)
4. You're in — browse your device fleet

## Kandji API Token Permissions

Your API token needs the following permissions for full functionality:

| Permission | Required For |
|-----------|-------------|
| Device List | Browsing devices |
| Device Details | Device detail view, hardware info |
| Device Actions | Lock, restart, erase, etc. |
| Device Secrets | FileVault keys, recovery passwords |
| Device Notes | Creating and managing notes |
| Blueprints | Blueprint management |
| Users | User management |
| Tags | Tag management |
| ADE Integrations | ADE integration management |
| Threat Details | Threat detection view |
| Vulnerability Management | CVE browsing and details |
| Prism | Audit log access |
| Settings | Licensing info |
| Library Items | Library item status and activity |

## Dependencies

### Runtime
- `flutter_riverpod` — State management
- `go_router` — Declarative routing
- `dio` — HTTP client
- `freezed_annotation` / `json_annotation` — Data class annotations
- `flutter_secure_storage` — Encrypted credential storage
- `local_auth` — Biometric authentication
- `crypto` — PIN hashing
- `flutter_map` / `latlong2` — OpenStreetMap-based maps
- `file_picker` — File selection for ADE token upload
- `url_launcher` — External URL handling
- `logger` — Structured logging
- `intl` — Internationalization

### Development
- `freezed` / `json_serializable` — Code generation
- `build_runner` — Build system
- `riverpod_generator` / `riverpod_lint` — Riverpod tooling
- `mockito` — Test mocking
- `flutter_lints` — Linting rules

## Contributing

Contributions are welcome! Please:

1. Fork the repository
2. Create a feature branch
3. Follow the existing code style and architecture patterns
4. Add localization strings for all three languages (EN, DE, ES)
5. Run `dart run build_runner build --delete-conflicting-outputs` after modifying entities
6. Run `flutter gen-l10n` after modifying ARB files
7. Test on both phone and tablet layouts
8. Submit a pull request

## License

This project is open source. See [LICENSE](LICENSE) for details.

---

Built with Flutter and Material Design 3.
