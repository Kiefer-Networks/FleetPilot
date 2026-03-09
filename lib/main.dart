import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';

import 'core/constants/storage_keys.dart';
import 'core/network/certificate_pinner.dart';
import 'core/routing/app_router.dart';
import 'presentation/providers/security_providers.dart';
import 'presentation/providers/settings_providers.dart';
import 'presentation/theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const storage = FlutterSecureStorage(
    aOptions: AndroidOptions(),
    iOptions: IOSOptions(
      accessibility: KeychainAccessibility.unlocked_this_device,
    ),
  );

  await CertificatePinner.initialize();

  final activeId = await storage.read(key: StorageKeys.activeProfileId);
  final hasProfile = activeId != null && activeId.isNotEmpty;

  final pinHash = await storage.read(key: StorageKeys.pinHash);
  final hasPinLock = pinHash != null && pinHash.isNotEmpty;

  final onboarded = await storage.read(key: StorageKeys.onboardingCompleted);
  final hasCompletedOnboarding = onboarded == 'true';

  runApp(
    ProviderScope(
      child: FleetPilotApp(
        hasProfile: hasProfile,
        hasPinLock: hasPinLock,
        hasCompletedOnboarding: hasCompletedOnboarding,
      ),
    ),
  );
}

/// Root application widget for FleetPilot.
///
/// Material 3 is the sole design system across all platforms.
/// Observes app lifecycle changes to implement session timeout locking.
class FleetPilotApp extends ConsumerStatefulWidget {
  const FleetPilotApp({
    super.key,
    required this.hasProfile,
    required this.hasPinLock,
    required this.hasCompletedOnboarding,
  });

  final bool hasProfile;
  final bool hasPinLock;
  final bool hasCompletedOnboarding;

  @override
  ConsumerState<FleetPilotApp> createState() => _FleetPilotAppState();
}

class _FleetPilotAppState extends ConsumerState<FleetPilotApp>
    with WidgetsBindingObserver {
  late final GoRouter _router;
  final _timeoutService = const SessionTimeoutService();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _router = createRouter(
      hasProfile: widget.hasProfile,
      hasPinLock: widget.hasPinLock,
      hasCompletedOnboarding: widget.hasCompletedOnboarding,
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _router.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    final pinEnabled = ref.read(pinEnabledProvider);
    if (!pinEnabled) return;

    switch (state) {
      case AppLifecycleState.paused:
      case AppLifecycleState.inactive:
        _timeoutService.recordBackground();
        break;

      case AppLifecycleState.resumed:
        _checkSessionTimeout();
        break;

      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        break;
    }
  }

  Future<void> _checkSessionTimeout() async {
    final pinEnabled = ref.read(pinEnabledProvider);
    if (!pinEnabled) return;

    final timeout = ref.read(lockTimeoutProvider);
    final timedOut = await _timeoutService.hasTimedOut(timeout.seconds);

    if (timedOut && mounted) {
      // Only lock if we're not already on the biometric gate
      final currentLocation =
          _router.routerDelegate.currentConfiguration.last.matchedLocation;
      if (currentLocation == '/auth/biometric') return;

      ref.read(sessionLockedProvider.notifier).lock();
      _router.go('/auth/biometric');
    }
  }

  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(localeProvider);
    final themeMode = ref.watch(themeModeProvider);

    // Listen for session unlock to clear the timestamp
    ref.listen<bool>(sessionLockedProvider, (previous, next) {
      if (previous == true && next == false) {
        _timeoutService.clear();
      }
    });

    return MaterialApp.router(
      title: 'FleetPilot',
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      themeMode: themeMode,
      locale: locale,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router,
    );
  }
}
