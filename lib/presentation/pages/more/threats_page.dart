import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../domain/entities/threat.dart';
import '../../providers/tenant_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

class ThreatsPage extends ConsumerStatefulWidget {
  const ThreatsPage({super.key});

  @override
  ConsumerState<ThreatsPage> createState() => _ThreatsPageState();
}

class _ThreatsPageState extends ConsumerState<ThreatsPage> {
  final _searchController = SearchController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  int _countActiveFilters() {
    var count = 0;
    if (ref.read(threatStatusFilterProvider) != null) count++;
    if (ref.read(threatSeverityFilterProvider) != null) count++;
    if (ref.read(threatManagementStateFilterProvider) != null) count++;
    return count;
  }

  void _clearAllFilters() {
    _searchController.clear();
    ref.read(threatSearchQueryProvider.notifier).state = '';
    ref.read(threatStatusFilterProvider.notifier).state = null;
    ref.read(threatSeverityFilterProvider.notifier).state = null;
    ref.read(threatManagementStateFilterProvider.notifier).state = null;
    ref.read(threatSortAscProvider.notifier).state = true;
    setState(() {});
  }

  Future<void> _showFilterSheet() async {
    final result = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (_) => _ThreatFilterBottomSheet(ref: ref),
    );
    if (result == true) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final filteredThreats = ref.watch(filteredThreatsProvider);
    final statusFilter = ref.watch(threatStatusFilterProvider);
    final severityFilter = ref.watch(threatSeverityFilterProvider);
    final mgmtFilter = ref.watch(threatManagementStateFilterProvider);
    final activeFilterCount = _countActiveFilters();

    return Scaffold(
      appBar: AppBar(title: Text(l10n.threats)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.invalidate(threatsProvider),
        tooltip: l10n.refresh,
        child: const Icon(Icons.refresh),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: SearchBar(
                    controller: _searchController,
                    hintText: l10n.searchThreats,
                    leading: const Icon(Icons.search, size: 20),
                    trailing: [
                      if (_searchController.text.isNotEmpty)
                        IconButton(
                          icon: const Icon(Icons.clear, size: 20),
                          tooltip: l10n.clearSearch,
                          onPressed: () {
                            _searchController.clear();
                            ref.read(threatSearchQueryProvider.notifier).state =
                                '';
                            setState(() {});
                          },
                        ),
                    ],
                    onChanged: (query) {
                      ref.read(threatSearchQueryProvider.notifier).state =
                          query;
                      setState(() {});
                    },
                    padding: const WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 8),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Badge(
                  isLabelVisible: activeFilterCount > 0,
                  label: Text('$activeFilterCount'),
                  child: IconButton(
                    icon: Icon(
                      Icons.tune,
                      color: activeFilterCount > 0
                          ? theme.colorScheme.primary
                          : null,
                    ),
                    tooltip: l10n.filterTitle,
                    onPressed: _showFilterSheet,
                  ),
                ),
              ],
            ),
          ),

          // Active filter chips
          if (activeFilterCount > 0) ...[
            const SizedBox(height: 8),
            SizedBox(
              height: 36,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  if (statusFilter != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: InputChip(
                        label: Text(statusFilter),
                        onDeleted: () =>
                            ref
                                    .read(threatStatusFilterProvider.notifier)
                                    .state =
                                null,
                      ),
                    ),
                  if (severityFilter != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: InputChip(
                        label: Text(severityFilter),
                        onDeleted: () =>
                            ref
                                    .read(threatSeverityFilterProvider.notifier)
                                    .state =
                                null,
                      ),
                    ),
                  if (mgmtFilter != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: InputChip(
                        label: Text(mgmtFilter),
                        onDeleted: () =>
                            ref
                                    .read(
                                      threatManagementStateFilterProvider
                                          .notifier,
                                    )
                                    .state =
                                null,
                      ),
                    ),
                  ActionChip(
                    label: Text(l10n.filterClearAll),
                    avatar: const Icon(Icons.clear_all, size: 16),
                    onPressed: _clearAllFilters,
                  ),
                ],
              ),
            ),
          ],

          const SizedBox(height: 8),

          Expanded(
            child: filteredThreats.when(
              data: (threats) {
                if (threats.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.shield_outlined,
                          size: 48,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          l10n.noThreatsFound,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () async => ref.invalidate(threatsProvider),
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                      bottom: 80,
                    ),
                    itemCount: threats.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                          child: Text(
                            l10n.threatCount(threats.length),
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        );
                      }
                      return _ThreatTile(threat: threats[index - 1]);
                    },
                  ),
                );
              },
              loading: () => const LoadingWidget(),
              error: (error, _) => ErrorStateWidget(
                failure: error,
                onRetry: () => ref.invalidate(threatsProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ThreatFilterBottomSheet extends StatelessWidget {
  const _ThreatFilterBottomSheet({required this.ref});

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);

    final statusOptions = {
      'quarantined': l10n.statusQuarantined,
      'not_quarantined': l10n.statusNotQuarantined,
      'released': l10n.statusReleased,
      'resolved': l10n.statusResolved,
    };

    final severityOptions = {
      'critical': l10n.severityCritical,
      'high': l10n.severityHigh,
      'medium': l10n.severityMedium,
      'low': l10n.severityLow,
      'informational': l10n.severityInformational,
    };

    final mgmtOptions = {
      'open': l10n.managementStateOpen,
      'closed': l10n.managementStateClosed,
    };

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.55,
      minChildSize: 0.3,
      maxChildSize: 0.85,
      builder: (context, scrollController) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            final status = ref.read(threatStatusFilterProvider);
            final severity = ref.read(threatSeverityFilterProvider);
            final mgmt = ref.read(threatManagementStateFilterProvider);
            final sortAsc = ref.read(threatSortAscProvider);

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(l10n.filterTitle, style: theme.textTheme.titleLarge),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          ref.read(threatStatusFilterProvider.notifier).state =
                              null;
                          ref.read(threatSeverityFilterProvider.notifier).state =
                              null;
                          ref
                                  .read(
                                    threatManagementStateFilterProvider.notifier,
                                  )
                                  .state =
                              null;
                          ref.read(threatSortAscProvider.notifier).state = true;
                          setSheetState(() {});
                        },
                        child: Text(l10n.filterClearAll),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: ListView(
                    controller: scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      // Status filter
                      Text(
                        l10n.filterStatus,
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        children: [
                          FilterChip(
                            label: Text(l10n.filterAll),
                            selected: status == null,
                            onSelected: (_) {
                              ref
                                      .read(threatStatusFilterProvider.notifier)
                                      .state =
                                  null;
                              setSheetState(() {});
                            },
                          ),
                          for (final entry in statusOptions.entries)
                            FilterChip(
                              label: Text(entry.value),
                              selected: status == entry.key,
                              onSelected: (_) {
                                ref
                                        .read(
                                          threatStatusFilterProvider.notifier,
                                        )
                                        .state =
                                    status == entry.key ? null : entry.key;
                                setSheetState(() {});
                              },
                            ),
                        ],
                      ),

                      // Severity filter
                      const SizedBox(height: 16),
                      Text(
                        l10n.filterSeverity,
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        children: [
                          FilterChip(
                            label: Text(l10n.filterAll),
                            selected: severity == null,
                            onSelected: (_) {
                              ref
                                      .read(
                                        threatSeverityFilterProvider.notifier,
                                      )
                                      .state =
                                  null;
                              setSheetState(() {});
                            },
                          ),
                          for (final entry in severityOptions.entries)
                            FilterChip(
                              label: Text(entry.value),
                              selected: severity == entry.key,
                              onSelected: (_) {
                                ref
                                        .read(
                                          threatSeverityFilterProvider.notifier,
                                        )
                                        .state =
                                    severity == entry.key ? null : entry.key;
                                setSheetState(() {});
                              },
                            ),
                        ],
                      ),

                      // Management state filter
                      const SizedBox(height: 16),
                      Text(
                        l10n.managementState,
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        children: [
                          FilterChip(
                            label: Text(l10n.filterAll),
                            selected: mgmt == null,
                            onSelected: (_) {
                              ref
                                      .read(
                                        threatManagementStateFilterProvider
                                            .notifier,
                                      )
                                      .state =
                                  null;
                              setSheetState(() {});
                            },
                          ),
                          for (final entry in mgmtOptions.entries)
                            FilterChip(
                              label: Text(entry.value),
                              selected: mgmt == entry.key,
                              onSelected: (_) {
                                ref
                                        .read(
                                          threatManagementStateFilterProvider
                                              .notifier,
                                        )
                                        .state =
                                    mgmt == entry.key ? null : entry.key;
                                setSheetState(() {});
                              },
                            ),
                        ],
                      ),

                      // Sort
                      const SizedBox(height: 16),
                      Text(l10n.sortTitle, style: theme.textTheme.titleSmall),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        children: [
                          FilterChip(
                            avatar: const Icon(Icons.arrow_downward, size: 16),
                            label: Text(l10n.sortAZ),
                            selected: sortAsc,
                            onSelected: (_) {
                              ref.read(threatSortAscProvider.notifier).state =
                                  true;
                              setSheetState(() {});
                            },
                          ),
                          FilterChip(
                            avatar: const Icon(Icons.arrow_upward, size: 16),
                            label: Text(l10n.sortZA),
                            selected: !sortAsc,
                            onSelected: (_) {
                              ref.read(threatSortAscProvider.notifier).state =
                                  false;
                              setSheetState(() {});
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () => Navigator.pop(context, true),
                      child: Text(l10n.filterApply),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}

class _ThreatTile extends StatelessWidget {
  const _ThreatTile({required this.threat});

  final Threat threat;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isMalware = threat.classification?.toLowerCase() == 'malware';
    final statusColor = _statusColor(threat.status, colorScheme);
    final severityColor = _severityColor(threat.severity, colorScheme);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: (isMalware ? colorScheme.error : Colors.orange)
                      .withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  isMalware ? Icons.dangerous : Icons.warning_amber,
                  size: 20,
                  color: isMalware ? colorScheme.error : Colors.orange,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      threat.threatName ??
                          threat.fileName ??
                          threat.threatId ??
                          'Unknown',
                      style: theme.textTheme.titleSmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (threat.deviceName != null)
                      Text(
                        threat.deviceName!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    if (threat.filePath != null)
                      Text(
                        threat.filePath!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        if (threat.severity != null)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: severityColor.withValues(alpha: 0.12),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              threat.severity!.toUpperCase(),
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: severityColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        if (threat.severity != null &&
                            threat.managementState != null)
                          const SizedBox(width: 6),
                        if (threat.managementState != null)
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: colorScheme.secondaryContainer,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              threat.managementState!,
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: colorScheme.onSecondaryContainer,
                                fontSize: 10,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              if (threat.status != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    threat.status!,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: statusColor,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Color _statusColor(String? status, ColorScheme cs) {
    final s = status?.toLowerCase() ?? '';
    if (s == 'quarantined') return cs.primary;
    if (s == 'not_quarantined') return cs.error;
    if (s == 'released') return Colors.orange;
    if (s == 'resolved') return Colors.green;
    return cs.onSurfaceVariant;
  }

  Color _severityColor(String? severity, ColorScheme cs) {
    final s = severity?.toLowerCase() ?? '';
    if (s == 'critical') return cs.error;
    if (s == 'high') return Colors.deepOrange;
    if (s == 'medium') return Colors.orange;
    if (s == 'low') return cs.primary;
    if (s == 'informational') return cs.tertiary;
    return cs.onSurfaceVariant;
  }
}
