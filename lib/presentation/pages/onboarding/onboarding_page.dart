import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/storage_keys.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = PageController();
  int _currentPage = 0;

  static const _pageCount = 4;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _completeOnboarding() async {
    const storage = FlutterSecureStorage(
      aOptions: AndroidOptions(),
      iOptions: IOSOptions(
        accessibility: KeychainAccessibility.unlocked_this_device,
      ),
    );
    await storage.write(key: StorageKeys.onboardingCompleted, value: 'true');
    if (mounted) {
      context.go('/auth/setup');
    }
  }

  void _nextPage() {
    if (_currentPage < _pageCount - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _completeOnboarding();
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 8, right: 8),
                child: TextButton(
                  onPressed: _completeOnboarding,
                  child: Text(l10n.onboardingSkip),
                ),
              ),
            ),
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (index) {
                  setState(() => _currentPage = index);
                },
                children: [
                  _WelcomePage(l10n: l10n, theme: theme),
                  _DeviceManagementPage(l10n: l10n, theme: theme),
                  _SecurityPage(l10n: l10n, theme: theme),
                  _GetStartedPage(l10n: l10n, theme: theme),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Row(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(_pageCount, (index) {
                      final isActive = index == _currentPage;
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: isActive ? 24 : 8,
                        height: 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: isActive
                              ? theme.colorScheme.primary
                              : theme.colorScheme.outlineVariant,
                        ),
                      );
                    }),
                  ),
                  const Spacer(),
                  if (_currentPage < _pageCount - 1)
                    FilledButton(
                      onPressed: _nextPage,
                      child: Text(l10n.onboardingNext),
                    )
                  else
                    FilledButton.icon(
                      onPressed: _completeOnboarding,
                      icon: const Icon(Icons.arrow_forward),
                      label: Text(l10n.onboardingGetStarted),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WelcomePage extends StatelessWidget {
  const _WelcomePage({required this.l10n, required this.theme});

  final AppLocalizations l10n;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return _OnboardingContent(
      icon: Icons.flight_takeoff,
      iconColor: theme.colorScheme.primary,
      title: l10n.onboardingWelcomeTitle,
      subtitle: l10n.onboardingWelcomeSubtitle,
      theme: theme,
    );
  }
}

class _DeviceManagementPage extends StatelessWidget {
  const _DeviceManagementPage({required this.l10n, required this.theme});

  final AppLocalizations l10n;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return _OnboardingContent(
      icon: Icons.devices,
      iconColor: theme.colorScheme.tertiary,
      title: l10n.onboardingDevicesTitle,
      subtitle: l10n.onboardingDevicesSubtitle,
      theme: theme,
      features: [
        _FeatureRow(
          icon: Icons.phone_iphone,
          label: l10n.onboardingDevicesFeature1,
          theme: theme,
        ),
        _FeatureRow(
          icon: Icons.settings_remote,
          label: l10n.onboardingDevicesFeature2,
          theme: theme,
        ),
        _FeatureRow(
          icon: Icons.inventory_2_outlined,
          label: l10n.onboardingDevicesFeature3,
          theme: theme,
        ),
      ],
    );
  }
}

class _SecurityPage extends StatelessWidget {
  const _SecurityPage({required this.l10n, required this.theme});

  final AppLocalizations l10n;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return _OnboardingContent(
      icon: Icons.shield_outlined,
      iconColor: theme.colorScheme.secondary,
      title: l10n.onboardingSecurityTitle,
      subtitle: l10n.onboardingSecuritySubtitle,
      theme: theme,
      features: [
        _FeatureRow(
          icon: Icons.fingerprint,
          label: l10n.onboardingSecurityFeature1,
          theme: theme,
        ),
        _FeatureRow(
          icon: Icons.pin_outlined,
          label: l10n.onboardingSecurityFeature2,
          theme: theme,
        ),
        _FeatureRow(
          icon: Icons.lock_clock,
          label: l10n.onboardingSecurityFeature3,
          theme: theme,
        ),
      ],
    );
  }
}

class _GetStartedPage extends StatelessWidget {
  const _GetStartedPage({required this.l10n, required this.theme});

  final AppLocalizations l10n;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return _OnboardingContent(
      icon: Icons.rocket_launch_outlined,
      iconColor: theme.colorScheme.primary,
      title: l10n.onboardingReadyTitle,
      subtitle: l10n.onboardingReadySubtitle,
      theme: theme,
    );
  }
}

class _OnboardingContent extends StatelessWidget {
  const _OnboardingContent({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
    required this.theme,
    this.features,
  });

  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;
  final ThemeData theme;
  final List<Widget>? features;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconColor.withAlpha(26),
            ),
            child: Icon(icon, size: 56, color: iconColor),
          ),
          const SizedBox(height: 40),
          Text(
            title,
            style: theme.textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            subtitle,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          if (features != null) ...[const SizedBox(height: 32), ...features!],
        ],
      ),
    );
  }
}

class _FeatureRow extends StatelessWidget {
  const _FeatureRow({
    required this.icon,
    required this.label,
    required this.theme,
  });

  final IconData icon;
  final String label;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.colorScheme.primaryContainer,
            ),
            child: Icon(
              icon,
              size: 20,
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(child: Text(label, style: theme.textTheme.bodyMedium)),
        ],
      ),
    );
  }
}
