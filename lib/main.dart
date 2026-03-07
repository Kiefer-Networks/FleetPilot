import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'core/constants/storage_keys.dart';
import 'core/routing/app_router.dart';
import 'presentation/providers/settings_providers.dart';
import 'presentation/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const storage = FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.unlocked_this_device,
    ),
  );

  final activeId = await storage.read(key: StorageKeys.activeProfileId);
  final hasProfile = activeId != null && activeId.isNotEmpty;

  final pinHash = await storage.read(key: StorageKeys.pinHash);
  final hasPinLock = pinHash != null && pinHash.isNotEmpty;

  runApp(
    ProviderScope(
      child: FleetPilotApp(hasProfile: hasProfile, hasPinLock: hasPinLock),
    ),
  );
}

/// Root application widget for FleetPilot.
///
/// Material 3 is the sole design system across all platforms.
class FleetPilotApp extends ConsumerWidget {
  const FleetPilotApp({
    super.key,
    required this.hasProfile,
    required this.hasPinLock,
  });

  final bool hasProfile;
  final bool hasPinLock;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = createRouter(hasProfile: hasProfile, hasPinLock: hasPinLock);
    final locale = ref.watch(localeProvider);

    return MaterialApp.router(
      title: 'FleetPilot',
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      themeMode: ThemeMode.system,
      locale: locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router,
    );
  }
}
