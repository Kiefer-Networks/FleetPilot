import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../domain/entities/vulnerability.dart';
import '../../providers/tenant_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

class VulnerabilitiesPage extends ConsumerStatefulWidget {
  const VulnerabilitiesPage({super.key});

  @override
  ConsumerState<VulnerabilitiesPage> createState() =>
      _VulnerabilitiesPageState();
}

class _VulnerabilitiesPageState extends ConsumerState<VulnerabilitiesPage> {
  final _searchController = SearchController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  int _countActiveFilters() {
    var count = 0;
    if (ref.read(vulnSeverityFilterProvider) != null) count++;
    final sortField = ref.read(vulnSortFieldProvider);
    final sortAsc = ref.read(vulnSortAscProvider);
    // Count sort as active if not default (cvss desc)
    if (sortField != VulnSortField.cvss || sortAsc != false) count++;
    return count;
  }

  void _clearAllFilters() {
    _searchController.clear();
    ref.read(vulnSearchQueryProvider.notifier).state = '';
    ref.read(vulnSeverityFilterProvider.notifier).state = null;
    ref.read(vulnSortFieldProvider.notifier).state = VulnSortField.cvss;
    ref.read(vulnSortAscProvider.notifier).state = false;
    setState(() {});
  }

  Future<void> _showFilterSheet() async {
    final result = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => _VulnFilterBottomSheet(ref: ref),
    );
    if (result == true) setState(() {});
  }

  String _sortFieldLabel(VulnSortField field) {
    final l10n = AppLocalizations.of(context);
    switch (field) {
      case VulnSortField.cvss:
        return l10n.sortByCvss;
      case VulnSortField.deviceCount:
        return l10n.sortByDeviceCount;
      case VulnSortField.cveId:
        return l10n.sortByCveId;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final filteredVulns = ref.watch(filteredVulnerabilitiesProvider);
    final severityFilter = ref.watch(vulnSeverityFilterProvider);
    final sortField = ref.watch(vulnSortFieldProvider);
    final sortAsc = ref.watch(vulnSortAscProvider);
    final activeFilterCount = _countActiveFilters();

    // Determine if sort is non-default
    final isSortNonDefault =
        sortField != VulnSortField.cvss || sortAsc != false;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.vulnerabilities)),
      body: Column(
        children: [
          // Search bar + filter icon
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: Row(
              children: [
                Expanded(
                  child: SearchBar(
                    controller: _searchController,
                    hintText: l10n.searchVulnerabilities,
                    leading: const Icon(Icons.search, size: 20),
                    trailing: [
                      if (_searchController.text.isNotEmpty)
                        IconButton(
                          icon: const Icon(Icons.clear, size: 20),
                          tooltip: l10n.clearSearch,
                          onPressed: () {
                            _searchController.clear();
                            ref.read(vulnSearchQueryProvider.notifier).state =
                                '';
                            setState(() {});
                          },
                        ),
                    ],
                    onChanged: (query) {
                      ref.read(vulnSearchQueryProvider.notifier).state = query;
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
          if (severityFilter != null || isSortNonDefault) ...[
            const SizedBox(height: 8),
            SizedBox(
              height: 36,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  if (severityFilter != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: InputChip(
                        label: Text(
                          severityFilter[0].toUpperCase() +
                              severityFilter.substring(1),
                        ),
                        onDeleted: () {
                          ref.read(vulnSeverityFilterProvider.notifier).state =
                              null;
                          setState(() {});
                        },
                      ),
                    ),
                  if (isSortNonDefault)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: InputChip(
                        avatar: Icon(
                          sortAsc ? Icons.arrow_upward : Icons.arrow_downward,
                          size: 16,
                        ),
                        label: Text(_sortFieldLabel(sortField)),
                        onDeleted: () {
                          ref.read(vulnSortFieldProvider.notifier).state =
                              VulnSortField.cvss;
                          ref.read(vulnSortAscProvider.notifier).state = false;
                          setState(() {});
                        },
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
            child: filteredVulns.when(
              data: (vulns) {
                if (vulns.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.bug_report_outlined,
                          size: 48,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          l10n.noVulnerabilitiesFound,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  );
                }

                return RefreshIndicator(
                  onRefresh: () async =>
                      ref.invalidate(vulnerabilitiesProvider),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    itemCount: vulns.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                          child: Text(
                            l10n.vulnCount(vulns.length),
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        );
                      }
                      return _VulnerabilityTile(vuln: vulns[index - 1]);
                    },
                  ),
                );
              },
              loading: () => const LoadingWidget(),
              error: (error, _) => ErrorStateWidget(
                failure: error,
                onRetry: () => ref.invalidate(vulnerabilitiesProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _VulnFilterBottomSheet extends StatelessWidget {
  const _VulnFilterBottomSheet({required this.ref});

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.55,
      minChildSize: 0.3,
      maxChildSize: 0.85,
      builder: (context, scrollController) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            final severityFilter = ref.read(vulnSeverityFilterProvider);
            final sortField = ref.read(vulnSortFieldProvider);
            final sortAsc = ref.read(vulnSortAscProvider);

            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                    width: 32,
                    height: 4,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.4,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(l10n.filterSort, style: theme.textTheme.titleLarge),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          ref.read(vulnSeverityFilterProvider.notifier).state =
                              null;
                          ref.read(vulnSortFieldProvider.notifier).state =
                              VulnSortField.cvss;
                          ref.read(vulnSortAscProvider.notifier).state = false;
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
                      // Severity section
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
                            selected: severityFilter == null,
                            onSelected: (_) {
                              ref
                                      .read(vulnSeverityFilterProvider.notifier)
                                      .state =
                                  null;
                              setSheetState(() {});
                            },
                          ),
                          for (final entry in {
                            'critical': l10n.severityCritical,
                            'high': l10n.severityHigh,
                            'medium': l10n.severityMedium,
                            'low': l10n.severityLow,
                          }.entries)
                            FilterChip(
                              label: Text(entry.value),
                              selected: severityFilter == entry.key,
                              onSelected: (_) {
                                ref
                                    .read(vulnSeverityFilterProvider.notifier)
                                    .state = severityFilter == entry.key
                                    ? null
                                    : entry.key;
                                setSheetState(() {});
                              },
                            ),
                        ],
                      ),
                      const SizedBox(height: 20),

                      // Sort field section
                      Text(l10n.sortBy, style: theme.textTheme.titleSmall),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        children: [
                          for (final entry in {
                            VulnSortField.cvss: l10n.sortByCvss,
                            VulnSortField.deviceCount: l10n.sortByDeviceCount,
                            VulnSortField.cveId: l10n.sortByCveId,
                          }.entries)
                            FilterChip(
                              label: Text(entry.value),
                              selected: sortField == entry.key,
                              onSelected: (_) {
                                ref.read(vulnSortFieldProvider.notifier).state =
                                    entry.key;
                                setSheetState(() {});
                              },
                            ),
                        ],
                      ),
                      const SizedBox(height: 16),

                      // Sort direction section
                      Text(
                        l10n.sortDirection,
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 4,
                        children: [
                          FilterChip(
                            avatar: const Icon(Icons.arrow_downward, size: 16),
                            label: Text(l10n.descending),
                            selected: !sortAsc,
                            onSelected: (_) {
                              ref.read(vulnSortAscProvider.notifier).state =
                                  false;
                              setSheetState(() {});
                            },
                          ),
                          FilterChip(
                            avatar: const Icon(Icons.arrow_upward, size: 16),
                            label: Text(l10n.ascending),
                            selected: sortAsc,
                            onSelected: (_) {
                              ref.read(vulnSortAscProvider.notifier).state =
                                  true;
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

class _VulnerabilityTile extends StatelessWidget {
  const _VulnerabilityTile({required this.vuln});

  final Vulnerability vuln;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final severityColor = _severityColor(vuln.severity, colorScheme);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: vuln.cveId != null
              ? () => context.go('/more/vulnerabilities/${vuln.cveId}')
              : null,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: severityColor.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.bug_report, size: 20, color: severityColor),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        vuln.cveId ?? 'Unknown',
                        style: theme.textTheme.titleSmall,
                      ),
                      if (vuln.software != null)
                        Text(
                          vuln.software!,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      Row(
                        children: [
                          if (vuln.cvssScore != null)
                            Text(
                              'CVSS ${vuln.cvssScore!.toStringAsFixed(1)}',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: severityColor,
                              ),
                            ),
                          if (vuln.deviceCount != null) ...[
                            const SizedBox(width: 12),
                            Icon(
                              Icons.devices,
                              size: 14,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              '${vuln.deviceCount}',
                              style: theme.textTheme.labelSmall,
                            ),
                          ],
                          if (vuln.kevScore != null && vuln.kevScore! > 0) ...[
                            const SizedBox(width: 12),
                            Icon(
                              Icons.warning_amber,
                              size: 14,
                              color: colorScheme.error,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              'KEV',
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: colorScheme.error,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
                if (vuln.severity != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: severityColor.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      vuln.severity!,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: severityColor,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _severityColor(String? severity, ColorScheme cs) {
    final s = severity?.toLowerCase() ?? '';
    if (s == 'critical') return cs.error;
    if (s == 'high') return Colors.deepOrange;
    if (s == 'medium') return Colors.orange;
    if (s == 'low') return cs.primary;
    return cs.onSurfaceVariant;
  }
}
