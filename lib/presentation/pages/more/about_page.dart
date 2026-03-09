import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../providers/tenant_providers.dart';

/// Cached package info provider.
final _packageInfoProvider = FutureProvider<PackageInfo>((ref) {
  return PackageInfo.fromPlatform();
});

/// About page with app info, links, and licenses.
class AboutPage extends ConsumerWidget {
  const AboutPage({super.key});

  Future<void> _openUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final licenseAsync = ref.watch(licenseInfoProvider);
    final pkgAsync = ref.watch(_packageInfoProvider);
    final appVersion = pkgAsync.value?.version ?? '';
    final buildNumber = pkgAsync.value?.buildNumber ?? '';
    final versionString = buildNumber.isNotEmpty
        ? '$appVersion+$buildNumber'
        : appVersion;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.aboutApp)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // App header
          Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Icon(
                      Icons.flight,
                      size: 40,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(l10n.appTitle, style: theme.textTheme.headlineSmall),
                  const SizedBox(height: 4),
                  Text(
                    l10n.version(versionString),
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    l10n.aboutDescription,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // Links section
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 8),
            child: Text(
              l10n.aboutLinks,
              style: theme.textTheme.titleSmall?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            margin: const EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.language, color: colorScheme.primary),
                  title: Text(l10n.aboutWebsite),
                  subtitle: Text(l10n.aboutWebsiteDomain),
                  trailing: Icon(
                    Icons.open_in_new,
                    size: 18,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  onTap: () => _openUrl('https://kiefer-networks.de'),
                ),
                const Divider(height: 1, indent: 56),
                ListTile(
                  leading: Icon(Icons.code, color: colorScheme.primary),
                  title: Text(l10n.aboutSourceCode),
                  subtitle: Text(l10n.aboutGitHub),
                  trailing: Icon(
                    Icons.open_in_new,
                    size: 18,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  onTap: () =>
                      _openUrl('https://github.com/Kiefer-Networks/FleetPilot'),
                ),
              ],
            ),
          ),

          // Licensing
          licenseAsync.whenOrNull(
                data: (info) {
                  if (info.deviceLimit == null && info.deviceCount == null) {
                    return null;
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 4, bottom: 8),
                        child: Text(
                          l10n.licensing,
                          style: theme.textTheme.titleSmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ),
                      Card(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              if (info.licenseType != null)
                                _InfoRow(
                                  label: l10n.licenseType,
                                  value: info.licenseType!,
                                ),
                              if (info.deviceCount != null)
                                _InfoRow(
                                  label: l10n.devicesUsed,
                                  value: '${info.deviceCount}',
                                ),
                              if (info.deviceLimit != null)
                                _InfoRow(
                                  label: l10n.deviceLimit,
                                  value: '${info.deviceLimit}',
                                ),
                              if (info.appleDeviceCount != null)
                                _InfoRow(
                                  label: l10n.appleDevices,
                                  value: '${info.appleDeviceCount}',
                                ),
                              if (info.deviceLimit != null &&
                                  info.deviceCount != null) ...[
                                const SizedBox(height: 8),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: LinearProgressIndicator(
                                    value: info.deviceLimit! > 0
                                        ? info.deviceCount! / info.deviceLimit!
                                        : 0,
                                    minHeight: 6,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ) ??
              const SizedBox.shrink(),

          // Licenses
          Card(
            clipBehavior: Clip.antiAlias,
            child: ListTile(
              leading: Icon(
                Icons.description_outlined,
                color: colorScheme.primary,
              ),
              title: Text(l10n.aboutOpenSourceLicenses),
              trailing: Icon(
                Icons.chevron_right,
                size: 18,
                color: colorScheme.onSurfaceVariant,
              ),
              onTap: () => showLicensePage(
                context: context,
                applicationName: l10n.appTitle,
                applicationVersion: versionString,
                applicationIcon: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      color: colorScheme.primaryContainer,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Icon(
                      Icons.flight,
                      size: 32,
                      color: colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          Text(value, style: theme.textTheme.bodyMedium),
        ],
      ),
    );
  }
}
