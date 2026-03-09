import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../core/di/providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

/// Detail page showing Prism data for a specific category.
class PrismDetailPage extends ConsumerStatefulWidget {
  const PrismDetailPage({super.key, required this.category});

  final String category;

  @override
  ConsumerState<PrismDetailPage> createState() => _PrismDetailPageState();
}

class _PrismDetailPageState extends ConsumerState<PrismDetailPage> {
  String? _selectedFamily;
  String _searchQuery = '';
  List<Map<String, dynamic>> _allItems = [];
  int _total = 0;
  bool _loading = true;
  Object? _error;
  int? _expandedIndex;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _loading = true;
      _error = null;
      _expandedIndex = null;
    });

    try {
      final api = await ref.read(prismApiProvider.future);
      final result = await api.getCategory(
        widget.category,
        deviceFamilies: _selectedFamily,
      );
      final data = result['data'];
      final items = <Map<String, dynamic>>[];
      if (data is List) {
        for (final item in data) {
          if (item is Map<String, dynamic>) {
            items.add(item);
          }
        }
      }
      if (mounted) {
        setState(() {
          _allItems = items;
          _total = (result['total'] as num?)?.toInt() ?? items.length;
          _loading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e;
          _loading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final label = _categoryLabel(widget.category, l10n);
    final config = _displayConfig(widget.category);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label),
                Text(
                  l10n.prismRecords(_total),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
            floating: true,
            snap: true,
            actions: [
              PopupMenuButton<String?>(
                icon: Badge(
                  isLabelVisible: _selectedFamily != null,
                  child: const Icon(Icons.filter_list),
                ),
                tooltip: l10n.prismFilterByFamily,
                onSelected: (value) {
                  _selectedFamily = value;
                  _loadData();
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: null,
                    child: Text(l10n.prismAllFamilies),
                  ),
                  const PopupMenuItem(value: 'Mac', child: Text('Mac')),
                  const PopupMenuItem(value: 'iPhone', child: Text('iPhone')),
                  const PopupMenuItem(value: 'iPad', child: Text('iPad')),
                  const PopupMenuItem(value: 'tvOS', child: Text('tvOS')),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.download_outlined),
                tooltip: l10n.prismExport,
                onPressed: () async {
                  try {
                    final api = await ref.read(prismApiProvider.future);
                    await api.requestExport(widget.category);
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.prismExportRequested)),
                      );
                    }
                  } catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.actionFailed)),
                      );
                    }
                  }
                },
              ),
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(64),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: SearchBar(
                  hintText: l10n.search,
                  leading: const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(Icons.search),
                  ),
                  onChanged: (v) => setState(() {
                    _searchQuery = v;
                    _expandedIndex = null;
                  }),
                  elevation: WidgetStateProperty.all(0),
                  backgroundColor: WidgetStateProperty.all(
                    theme.colorScheme.surfaceContainerHigh,
                  ),
                ),
              ),
            ),
          ),
        ],
        body: _buildBody(theme, l10n, config),
      ),
    );
  }

  Widget _buildBody(ThemeData theme, AppLocalizations l10n, _CatConfig config) {
    if (_loading) return const LoadingWidget();
    if (_error != null) {
      return ErrorStateWidget(failure: _error!, onRetry: _loadData);
    }
    if (_allItems.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.analytics_outlined,
              size: 48,
              color: theme.colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 8),
            Text(l10n.prismNoData, style: theme.textTheme.bodyLarge),
          ],
        ),
      );
    }

    final query = _searchQuery.toLowerCase();
    final filtered = query.isEmpty
        ? _allItems
        : _allItems.where((item) {
            return item.values.any(
              (v) => v != null && v.toString().toLowerCase().contains(query),
            );
          }).toList();

    if (filtered.isEmpty) {
      return Center(
        child: Text(l10n.prismNoData, style: theme.textTheme.bodyLarge),
      );
    }

    // Grouped rendering for item-centric categories
    if (config.groupField != null) {
      final groups = <String, List<Map<String, dynamic>>>{};
      for (final item in filtered) {
        final key = item[config.groupField]?.toString() ?? '–';
        (groups[key] ??= []).add(item);
      }
      final groupKeys = groups.keys.toList()..sort((a, b) => a.compareTo(b));

      return RefreshIndicator(
        onRefresh: () async => _loadData(),
        child: ListView.separated(
          padding: const EdgeInsets.all(12),
          itemCount: groupKeys.length,
          separatorBuilder: (_, _) => const SizedBox(height: 2),
          itemBuilder: (context, index) {
            final key = groupKeys[index];
            final items = groups[key]!;
            return _GroupedPrismTile(
              items: items,
              config: config,
              expanded: _expandedIndex == index,
              onTap: () {
                setState(() {
                  _expandedIndex = _expandedIndex == index ? null : index;
                });
              },
            );
          },
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: () async => _loadData(),
      child: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: filtered.length,
        separatorBuilder: (_, _) => const SizedBox(height: 2),
        itemBuilder: (context, index) {
          final item = filtered[index];
          final isExpanded = _expandedIndex == index;
          return _PrismTile(
            item: item,
            config: config,
            expanded: isExpanded,
            onTap: () {
              setState(() {
                _expandedIndex = isExpanded ? null : index;
              });
            },
          );
        },
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Compact tile widget
// ---------------------------------------------------------------------------

class _PrismTile extends StatelessWidget {
  const _PrismTile({
    required this.item,
    required this.config,
    required this.expanded,
    required this.onTap,
  });

  final Map<String, dynamic> item;
  final _CatConfig config;
  final bool expanded;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;

    final title = _val(item, config.titleField);
    final sub = config.subtitleField != null
        ? _val(item, config.subtitleField!)
        : null;
    final deviceName = item['device__name']?.toString();
    final deviceFamily = item['device__family']?.toString();

    // Build trailing info: first highlight field value as badge
    final trailingField = config.trailingField;
    final trailingVal = trailingField != null ? item[trailingField] : null;

    // Detail fields: everything except title/subtitle/device meta
    final skipKeys = {
      config.titleField,
      if (config.subtitleField != null) config.subtitleField!,
      'device__name',
      'device__family',
      'device_id',
      'device__user_id',
    };

    return Card(
      margin: EdgeInsets.zero,
      elevation: expanded ? 1 : 0,
      color: expanded ? cs.surfaceContainerLow : null,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Main row
              Row(
                children: [
                  Icon(config.icon, size: 18, color: config.color),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (sub != null && sub.isNotEmpty)
                          Text(
                            sub,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: cs.onSurfaceVariant,
                              fontSize: 11,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                      ],
                    ),
                  ),
                  // Trailing badge
                  if (trailingVal != null) ...[
                    const SizedBox(width: 6),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: _badgeColor(trailingVal, cs),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        _fmtVal(trailingVal),
                        style: theme.textTheme.labelSmall?.copyWith(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: _badgeTextColor(trailingVal, cs),
                        ),
                      ),
                    ),
                  ],
                  // Device chip (only if title is NOT device name)
                  if (deviceName != null &&
                      config.titleField != 'device__name') ...[
                    const SizedBox(width: 6),
                    Icon(
                      _familyIcon(deviceFamily),
                      size: 13,
                      color: cs.outline,
                    ),
                    const SizedBox(width: 3),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 80),
                      child: Text(
                        deviceName,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: cs.outline,
                          fontSize: 10,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                  const SizedBox(width: 2),
                  Icon(
                    expanded ? Icons.expand_less : Icons.expand_more,
                    size: 18,
                    color: cs.onSurfaceVariant,
                  ),
                ],
              ),

              // Expanded detail
              if (expanded) ...[
                const SizedBox(height: 8),
                Divider(height: 1, color: cs.outlineVariant),
                const SizedBox(height: 8),
                ...item.entries
                    .where((e) => !skipKeys.contains(e.key) && e.value != null)
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 130,
                              child: Text(
                                _fmtHeader(e.key),
                                style: theme.textTheme.labelSmall?.copyWith(
                                  color: cs.onSurfaceVariant,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Text(
                                _fmtVal(e.value),
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Grouped tile widget (item-centric categories)
// ---------------------------------------------------------------------------

class _GroupedPrismTile extends StatelessWidget {
  const _GroupedPrismTile({
    required this.items,
    required this.config,
    required this.expanded,
    required this.onTap,
  });

  final List<Map<String, dynamic>> items;
  final _CatConfig config;
  final bool expanded;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final first = items.first;

    final title = _val(first, config.titleField);
    // Only show subtitle if it's not a device field (device info is in the
    // expanded per-device rows)
    String? sub;
    if (config.subtitleField != null &&
        !config.subtitleField!.startsWith('device__')) {
      sub = _val(first, config.subtitleField!);
    }

    return Card(
      margin: EdgeInsets.zero,
      elevation: expanded ? 1 : 0,
      color: expanded ? cs.surfaceContainerLow : null,
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header row
              Row(
                children: [
                  Icon(config.icon, size: 18, color: config.color),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (sub != null && sub.isNotEmpty)
                          Text(
                            sub,
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: cs.onSurfaceVariant,
                              fontSize: 11,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                      ],
                    ),
                  ),
                  // Device count badge
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: cs.secondaryContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.devices,
                          size: 12,
                          color: cs.onSecondaryContainer,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${items.length}',
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: cs.onSecondaryContainer,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 2),
                  Icon(
                    expanded ? Icons.expand_less : Icons.expand_more,
                    size: 18,
                    color: cs.onSurfaceVariant,
                  ),
                ],
              ),

              // Expanded: per-device rows
              if (expanded) ...[
                const SizedBox(height: 8),
                Divider(height: 1, color: cs.outlineVariant),
                const SizedBox(height: 6),
                ...items.map((item) {
                  final deviceName = item['device__name']?.toString() ?? '–';
                  final deviceFamily = item['device__family']?.toString();
                  final trailing = config.trailingField != null
                      ? item[config.trailingField]
                      : null;

                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: Row(
                      children: [
                        Icon(
                          _familyIcon(deviceFamily),
                          size: 14,
                          color: cs.onSurfaceVariant,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            deviceName,
                            style: theme.textTheme.bodySmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        if (trailing != null)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 1,
                            ),
                            decoration: BoxDecoration(
                              color: _badgeColor(trailing, cs),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              _fmtVal(trailing),
                              style: theme.textTheme.labelSmall?.copyWith(
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                color: _badgeTextColor(trailing, cs),
                              ),
                            ),
                          ),
                      ],
                    ),
                  );
                }),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Category config
// ---------------------------------------------------------------------------

class _CatConfig {
  const _CatConfig({
    required this.titleField,
    this.subtitleField,
    this.trailingField,
    this.groupField,
    required this.icon,
    required this.color,
  });

  final String titleField;
  final String? subtitleField;
  final String? trailingField;

  /// When non-null, items are grouped by this field (item-centric categories).
  /// Null means device-centric (one row per device, no grouping).
  final String? groupField;
  final IconData icon;
  final Color color;
}

_CatConfig _displayConfig(String cat) {
  return switch (cat) {
    'apps' => const _CatConfig(
      titleField: 'name',
      subtitleField: 'bundle_id',
      trailingField: 'version',
      groupField: 'bundle_id',
      icon: Icons.apps,
      color: Colors.blue,
    ),
    'activation_lock' => const _CatConfig(
      titleField: 'device__name',
      subtitleField: 'device__family',
      trailingField: 'activation_lock_manageable',
      icon: Icons.lock_outline,
      color: Colors.orange,
    ),
    'application_firewall' => const _CatConfig(
      titleField: 'device__name',
      subtitleField: 'device__family',
      trailingField: 'status',
      icon: Icons.fireplace_outlined,
      color: Colors.red,
    ),
    'cellular' => const _CatConfig(
      titleField: 'device__name',
      subtitleField: 'cellular_technology',
      trailingField: 'data_roaming_enabled',
      icon: Icons.cell_tower,
      color: Colors.teal,
    ),
    'certificates' => const _CatConfig(
      titleField: 'common_name',
      subtitleField: 'device__name',
      trailingField: 'is_identity',
      groupField: 'common_name',
      icon: Icons.verified_outlined,
      color: Colors.green,
    ),
    'desktop_and_screensaver' => const _CatConfig(
      titleField: 'device__name',
      subtitleField: 'host_name',
      trailingField: 'os_version',
      icon: Icons.desktop_mac_outlined,
      color: Colors.indigo,
    ),
    'device_information' => const _CatConfig(
      titleField: 'device__name',
      subtitleField: 'model',
      trailingField: 'os_version',
      icon: Icons.info_outline,
      color: Colors.blue,
    ),
    'filevault' => const _CatConfig(
      titleField: 'device__name',
      subtitleField: 'device__family',
      trailingField: 'status',
      icon: Icons.enhanced_encryption_outlined,
      color: Colors.deepPurple,
    ),
    'gatekeeper_and_xprotect' => const _CatConfig(
      titleField: 'device__name',
      subtitleField: 'gatekeeper_status',
      trailingField: 'xprotect_version',
      icon: Icons.security,
      color: Colors.red,
    ),
    'installed_profiles' => const _CatConfig(
      titleField: 'profile_display_name',
      subtitleField: 'organization',
      trailingField: 'managed',
      groupField: 'payload_identifier',
      icon: Icons.assignment_outlined,
      color: Colors.blue,
    ),
    'kernel_extensions' => const _CatConfig(
      titleField: 'name',
      subtitleField: 'identifier',
      trailingField: 'state',
      groupField: 'identifier',
      icon: Icons.extension_outlined,
      color: Colors.brown,
    ),
    'launch_agents_and_daemons' => const _CatConfig(
      titleField: 'label',
      subtitleField: 'file_name',
      trailingField: 'is_loaded',
      groupField: 'label',
      icon: Icons.rocket_launch_outlined,
      color: Colors.deepOrange,
    ),
    'local_users' => const _CatConfig(
      titleField: 'full_name',
      subtitleField: 'username',
      trailingField: 'type',
      groupField: 'username',
      icon: Icons.person_outline,
      color: Colors.cyan,
    ),
    'startup_settings' => const _CatConfig(
      titleField: 'device__name',
      subtitleField: 'secure_boot_level',
      trailingField: 'sip',
      icon: Icons.settings_power,
      color: Colors.blueGrey,
    ),
    'system_extensions' => const _CatConfig(
      titleField: 'name',
      subtitleField: 'identifier',
      trailingField: 'state',
      groupField: 'identifier',
      icon: Icons.widgets_outlined,
      color: Colors.purple,
    ),
    'transparency_database' => const _CatConfig(
      titleField: 'service',
      subtitleField: 'client',
      trailingField: 'allowed',
      icon: Icons.visibility_outlined,
      color: Colors.amber,
    ),
    _ => const _CatConfig(
      titleField: 'device__name',
      subtitleField: 'device__family',
      icon: Icons.analytics_outlined,
      color: Colors.grey,
    ),
  };
}

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

String _val(Map<String, dynamic> item, String field) {
  final v = item[field];
  if (v != null) return v.toString();
  if (field != 'device__name') {
    final dn = item['device__name'];
    if (dn != null) return dn.toString();
  }
  return '–';
}

String _fmtHeader(String key) {
  return key
      .replaceAll('__', ' ')
      .replaceAll('_', ' ')
      .split(' ')
      .map((w) => w.isEmpty ? '' : '${w[0].toUpperCase()}${w.substring(1)}')
      .join(' ');
}

String _fmtVal(dynamic value) {
  if (value == null) return '–';
  if (value is bool) return value ? 'Yes' : 'No';
  if (value is List) {
    if (value.isEmpty) return '–';
    return value.map((e) => e.toString()).join(', ');
  }
  if (value is Map) {
    return value.entries.map((e) => '${e.key}: ${e.value}').join(', ');
  }
  return value.toString();
}

Color _badgeColor(dynamic val, ColorScheme cs) {
  if (val is bool) {
    return val ? Colors.green.withValues(alpha: 0.15) : cs.errorContainer;
  }
  final s = val.toString().toLowerCase();
  if (s == 'enabled' || s == 'on' || s == 'active' || s == 'true') {
    return Colors.green.withValues(alpha: 0.15);
  }
  if (s == 'disabled' || s == 'off' || s == 'inactive' || s == 'false') {
    return cs.errorContainer;
  }
  return cs.secondaryContainer;
}

Color _badgeTextColor(dynamic val, ColorScheme cs) {
  if (val is bool) {
    return val ? Colors.green : cs.onErrorContainer;
  }
  final s = val.toString().toLowerCase();
  if (s == 'enabled' || s == 'on' || s == 'active' || s == 'true') {
    return Colors.green;
  }
  if (s == 'disabled' || s == 'off' || s == 'inactive' || s == 'false') {
    return cs.onErrorContainer;
  }
  return cs.onSecondaryContainer;
}

IconData _familyIcon(String? family) {
  return switch (family) {
    'Mac' => Icons.laptop_mac,
    'iPhone' => Icons.phone_iphone,
    'iPad' => Icons.tablet_mac,
    'tvOS' => Icons.tv,
    _ => Icons.devices,
  };
}

String _categoryLabel(String category, AppLocalizations l10n) {
  return switch (category) {
    'activation_lock' => l10n.prismCategoryActivationLock,
    'apps' => l10n.prismCategoryApps,
    'application_firewall' => l10n.prismCategoryApplicationFirewall,
    'cellular' => l10n.prismCategoryCellular,
    'certificates' => l10n.prismCategoryCertificates,
    'desktop_and_screensaver' => l10n.prismCategoryDesktopAndScreensaver,
    'device_information' => l10n.prismCategoryDeviceInformation,
    'filevault' => l10n.prismCategoryFilevault,
    'gatekeeper_and_xprotect' => l10n.prismCategoryGatekeeperAndXprotect,
    'installed_profiles' => l10n.prismCategoryInstalledProfiles,
    'kernel_extensions' => l10n.prismCategoryKernelExtensions,
    'launch_agents_and_daemons' => l10n.prismCategoryLaunchAgentsAndDaemons,
    'local_users' => l10n.prismCategoryLocalUsers,
    'startup_settings' => l10n.prismCategoryStartupSettings,
    'system_extensions' => l10n.prismCategorySystemExtensions,
    'transparency_database' => l10n.prismCategoryTransparencyDatabase,
    _ => category.replaceAll('_', ' '),
  };
}
