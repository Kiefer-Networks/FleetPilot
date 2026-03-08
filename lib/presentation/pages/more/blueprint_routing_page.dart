import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../core/di/providers.dart';
import '../../providers/tenant_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

class BlueprintRoutingPage extends ConsumerWidget {
  const BlueprintRoutingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(l10n.blueprintRouting),
          bottom: TabBar(
            tabs: [
              Tab(text: l10n.details),
              Tab(text: l10n.routingActivity),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _RoutingConfigTab(),
            _RoutingActivityTab(),
          ],
        ),
      ),
    );
  }
}

class _RoutingConfigTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final routingAsync = ref.watch(blueprintRoutingProvider);

    return routingAsync.when(
      data: (data) {
        final enrollmentCode = data['enrollment_code'];
        if (enrollmentCode == null || enrollmentCode is! Map) {
          return Center(
            child: Text(
              l10n.blueprintRoutingDesc,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          );
        }

        final isActive = enrollmentCode['is_active'] == true;
        final code = enrollmentCode['code']?.toString() ?? '';

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          l10n.enrollmentCode,
                          style: theme.textTheme.titleMedium,
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: isActive
                                ? Colors.green.withValues(alpha: 0.12)
                                : theme.colorScheme.errorContainer,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            isActive
                                ? l10n.enrollmentCodeActive
                                : l10n.enrollmentCodeInactive,
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: isActive
                                  ? Colors.green
                                  : theme.colorScheme.onErrorContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (code.isNotEmpty) ...[
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Expanded(
                            child: SelectableText(
                              code,
                              style: theme.textTheme.headlineMedium?.copyWith(
                                fontFamily: 'monospace',
                                letterSpacing: 4,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.copy),
                            tooltip: l10n.tapToCopy,
                            onPressed: () {
                              Clipboard.setData(ClipboardData(text: code));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(l10n.secretCopied),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Icon(
                          isActive ? Icons.pause : Icons.play_arrow,
                        ),
                        label: Text(
                          isActive
                              ? l10n.enrollmentCodeInactive
                              : l10n.enrollmentCodeActive,
                        ),
                        onPressed: () async {
                          final api =
                              await ref.read(tenantApiProvider.future);
                          await api.updateBlueprintRouting({
                            'enrollment_code': {
                              'is_active': !isActive,
                              if (code.isNotEmpty) 'code': code,
                            },
                          });
                          ref.invalidate(blueprintRoutingProvider);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(blueprintRoutingProvider),
      ),
    );
  }
}

class _RoutingActivityTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final activityAsync = ref.watch(blueprintRoutingActivityProvider);

    return activityAsync.when(
      data: (activities) {
        if (activities.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.history_outlined,
                  size: 48,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.noRoutingActivity,
                  style: theme.textTheme.bodyLarge,
                ),
              ],
            ),
          );
        }
        return RefreshIndicator(
          onRefresh: () async =>
              ref.invalidate(blueprintRoutingActivityProvider),
          child: ListView.builder(
            padding: const EdgeInsets.all(12),
            itemCount: activities.length,
            itemBuilder: (context, index) {
              final a = activities[index];
              final action = a['action']?.toString() ?? '';
              final createdAt = a['created_at']?.toString();
              final deviceName = a['device_name']?.toString();

              return Card(
                child: ListTile(
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.secondaryContainer,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.route,
                      color: theme.colorScheme.onSecondaryContainer,
                      size: 20,
                    ),
                  ),
                  title: Text(_formatAction(action)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (deviceName != null) Text(deviceName),
                      if (createdAt != null)
                        Text(
                          _formatDateTime(createdAt),
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: theme.colorScheme.outline,
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(blueprintRoutingActivityProvider),
      ),
    );
  }

  String _formatAction(String action) {
    return action
        .replaceAll(RegExp(r'[_-]'), ' ')
        .replaceAllMapped(
          RegExp(r'(^|\s)\w'),
          (m) => m.group(0)!.toUpperCase(),
        );
  }

  String _formatDateTime(String dateStr) {
    final parsed = DateTime.tryParse(dateStr);
    if (parsed == null) return dateStr;
    final local = parsed.toLocal();
    return '${local.year}-${local.month.toString().padLeft(2, '0')}-${local.day.toString().padLeft(2, '0')} '
        '${local.hour.toString().padLeft(2, '0')}:${local.minute.toString().padLeft(2, '0')}';
  }
}
