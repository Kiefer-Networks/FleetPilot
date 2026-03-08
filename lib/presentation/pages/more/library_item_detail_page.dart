import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/library_item_status.dart';
import '../../providers/blueprint_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

/// Detail page showing info, deployment status, and activity for a library item.
class LibraryItemDetailPage extends ConsumerWidget {
  const LibraryItemDetailPage({
    super.key,
    required this.itemId,
    required this.itemName,
  });

  final String itemId;
  final String itemName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final details = ref.watch(allLibraryItemDetailsProvider).value ?? {};
    final itemDetails = details[itemId];
    final category = itemDetails?['_category'] as String?;
    final subtitle = _displayCategory(category);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemName),
              if (subtitle != null)
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
            ],
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: l10n.details),
              Tab(text: l10n.libraryItemDeploymentStatus),
              Tab(text: l10n.libraryItemActivity),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _InfoTab(itemId: itemId, itemDetails: itemDetails),
            _StatusTab(itemId: itemId),
            _ActivityTab(itemId: itemId),
          ],
        ),
      ),
    );
  }

  static String? _displayCategory(String? category) {
    switch (category) {
      case 'custom-script':
        return 'Custom Script';
      case 'custom-app':
        return 'Custom App';
      case 'custom-profile':
        return 'Custom Profile';
      default:
        return null;
    }
  }
}

/// Info tab showing library item details based on its category.
class _InfoTab extends StatelessWidget {
  const _InfoTab({required this.itemId, this.itemDetails});

  final String itemId;
  final Map<String, dynamic>? itemDetails;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (itemDetails == null) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.info_outline,
              size: 48,
              color: colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 8),
            Text(
              'Built-in library item',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'Details available on Status tab',
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.outline,
              ),
            ),
          ],
        ),
      );
    }

    final category = itemDetails!['_category'] as String?;
    final active = itemDetails!['active'];

    // Common fields
    final rows = <_InfoRow>[];
    if (active != null) {
      rows.add(_InfoRow(
        label: 'Active',
        value: active == true ? 'Yes' : 'No',
      ));
    }

    // Category-specific fields
    switch (category) {
      case 'custom-script':
        _addIfPresent(rows, 'Execution', itemDetails!['execution_frequency']);
        _addIfPresent(rows, 'Restart', itemDetails!['restart']);
        _addIfPresent(rows, 'Self Service', itemDetails!['show_in_self_service']);
        break;
      case 'custom-app':
        _addIfPresent(rows, 'Install Type', itemDetails!['install_type']);
        _addIfPresent(rows, 'Enforcement', itemDetails!['install_enforcement']);
        _addIfPresent(rows, 'Self Service', itemDetails!['show_in_self_service']);
        break;
      case 'custom-profile':
        _addIfPresent(rows, 'Runs on Mac', itemDetails!['runs_on_mac']);
        _addIfPresent(rows, 'Runs on iPhone', itemDetails!['runs_on_iphone']);
        _addIfPresent(rows, 'Runs on iPad', itemDetails!['runs_on_ipad']);
        break;
    }

    _addIfPresent(rows, 'Created', itemDetails!['created_at']);
    _addIfPresent(rows, 'Updated', itemDetails!['updated_at']);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Properties card
        if (rows.isNotEmpty) ...[
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(children: rows),
            ),
          ),
          const SizedBox(height: 16),
        ],

        // Show all raw fields as a reference
        _RawFieldsCard(data: itemDetails!, category: category),
      ],
    );
  }

  void _addIfPresent(List<_InfoRow> rows, String label, dynamic value) {
    if (value == null) return;
    String display;
    if (value is bool) {
      display = value ? 'Yes' : 'No';
    } else if (value is String && value.contains('T') && value.contains('-')) {
      display = _formatDateTime(value);
    } else {
      display = value.toString();
    }
    rows.add(_InfoRow(label: label, value: display));
  }
}

/// Shows all fields from the API response grouped logically.
class _RawFieldsCard extends StatelessWidget {
  const _RawFieldsCard({required this.data, this.category});

  final Map<String, dynamic> data;
  final String? category;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Filter out internal/empty fields
    final entries = data.entries.where((e) {
      if (e.key.startsWith('_')) return false;
      if (e.value == null) return false;
      if (e.value is String && (e.value as String).isEmpty) return false;
      if (e.key == 'id' || e.key == 'name' || e.key == 'active') return false;
      if (e.key == 'created_at' || e.key == 'updated_at') return false;
      return true;
    }).toList();

    if (entries.isEmpty) return const SizedBox.shrink();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'All Properties',
              style: theme.textTheme.titleSmall?.copyWith(
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(height: 12),
            for (final entry in entries)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formatKey(entry.key),
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      _formatValue(entry.value),
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  String _formatKey(String key) {
    return key
        .replaceAll('_', ' ')
        .replaceAllMapped(
          RegExp(r'(^|\s)\w'),
          (m) => m.group(0)!.toUpperCase(),
        );
  }

  String _formatValue(dynamic value) {
    if (value is bool) return value ? 'Yes' : 'No';
    if (value is Map || value is List) return value.toString();
    final str = value.toString();
    if (str.contains('T') && str.contains('-') && str.length > 15) {
      return _formatDateTime(str);
    }
    return str;
  }
}

class _StatusTab extends ConsumerWidget {
  const _StatusTab({required this.itemId});

  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final statusAsync = ref.watch(libraryItemStatusProvider(itemId));

    return statusAsync.when(
      data: (statuses) {
        if (statuses.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.device_hub_outlined,
                  size: 48,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.noStatusFound,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: statuses.length,
          itemBuilder: (context, index) =>
              _StatusTile(status: statuses[index]),
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(libraryItemStatusProvider(itemId)),
      ),
    );
  }
}

class _StatusTile extends StatelessWidget {
  const _StatusTile({required this.status});

  final LibraryItemStatus status;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final hasTapTarget = status.deviceId != null;
    final displayName = status.deviceName ?? status.deviceId ?? 'Unknown';
    final auditSummary = _firstLine(status.lastAuditLog);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: hasTapTarget
            ? () => context.push('/devices/${status.deviceId}')
            : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.devices_outlined,
                  color: colorScheme.onSecondaryContainer,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      displayName,
                      style: theme.textTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (status.type != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        _formatAction(status.type!),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                    if (auditSummary != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        auditSummary,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                    if (status.reportedAt != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        _formatDateTime(status.reportedAt!),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.outline,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (status.status != null) _StatusBadge(status: status.status!),
              if (hasTapTarget) ...[
                const SizedBox(width: 4),
                Icon(
                  Icons.chevron_right,
                  color: colorScheme.onSurfaceVariant,
                  size: 20,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _ActivityTab extends ConsumerWidget {
  const _ActivityTab({required this.itemId});

  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final activityAsync = ref.watch(libraryItemActivityProvider(itemId));

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
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.noActivityFound2,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: activities.length,
          itemBuilder: (context, index) =>
              _ActivityTile(activity: activities[index]),
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(libraryItemActivityProvider(itemId)),
      ),
    );
  }
}

class _ActivityTile extends StatelessWidget {
  const _ActivityTile({required this.activity});

  final LibraryItemActivity activity;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final hasTapTarget = activity.deviceId != null;
    final displayName = activity.deviceName ?? activity.userEmail ?? 'Unknown';

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: hasTapTarget
            ? () => context.push('/devices/${activity.deviceId}')
            : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.play_arrow_outlined,
                  color: colorScheme.onSecondaryContainer,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formatAction(activity.action ?? 'Unknown'),
                      style: theme.textTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      displayName,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (activity.createdAt != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        _formatDateTime(activity.createdAt!),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.outline,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (activity.status != null)
                _StatusBadge(status: activity.status!),
              if (hasTapTarget) ...[
                const SizedBox(width: 4),
                Icon(
                  Icons.chevron_right,
                  color: colorScheme.onSurfaceVariant,
                  size: 20,
                ),
              ],
            ],
          ),
        ),
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

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.status});

  final String status;

  Color _backgroundColor(ColorScheme colorScheme) {
    final lower = status.toLowerCase();
    if (lower == 'success' || lower == 'pass' || lower == 'completed') {
      return colorScheme.primaryContainer;
    }
    if (lower == 'fail' || lower == 'failed' || lower == 'error') {
      return colorScheme.errorContainer;
    }
    if (lower == 'pending' || lower == 'running' || lower == 'in_progress') {
      return colorScheme.tertiaryContainer;
    }
    return colorScheme.surfaceContainerHighest;
  }

  Color _foregroundColor(ColorScheme colorScheme) {
    final lower = status.toLowerCase();
    if (lower == 'success' || lower == 'pass' || lower == 'completed') {
      return colorScheme.onPrimaryContainer;
    }
    if (lower == 'fail' || lower == 'failed' || lower == 'error') {
      return colorScheme.onErrorContainer;
    }
    if (lower == 'pending' || lower == 'running' || lower == 'in_progress') {
      return colorScheme.onTertiaryContainer;
    }
    return colorScheme.onSurfaceVariant;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: _backgroundColor(colorScheme),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        status,
        style: Theme.of(
          context,
        ).textTheme.labelSmall?.copyWith(color: _foregroundColor(colorScheme)),
      ),
    );
  }
}

String? _firstLine(String? text) {
  if (text == null || text.isEmpty) return null;
  for (final line in text.split('\n')) {
    final trimmed = line.trim();
    if (trimmed.isNotEmpty) return trimmed;
  }
  return null;
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
