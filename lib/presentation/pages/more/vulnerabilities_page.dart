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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final filteredVulns = ref.watch(filteredVulnerabilitiesProvider);
    final severityFilter = ref.watch(vulnSeverityFilterProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.vulnerabilities)),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: SearchBar(
              controller: _searchController,
              hintText: l10n.searchVulnerabilities,
              leading: const Icon(Icons.search, size: 20),
              trailing: [
                if (_searchController.text.isNotEmpty)
                  IconButton(
                    icon: const Icon(Icons.clear, size: 20),
                    onPressed: () {
                      _searchController.clear();
                      ref.read(vulnSearchQueryProvider.notifier).state = '';
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
          const SizedBox(height: 8),

          // Severity filter chips
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                FilterChip(
                  label: Text(l10n.filterAll),
                  selected: severityFilter == null,
                  onSelected: (_) =>
                      ref.read(vulnSeverityFilterProvider.notifier).state = null,
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: Text(l10n.filterCritical),
                  selected: severityFilter == 'critical',
                  onSelected: (_) =>
                      ref.read(vulnSeverityFilterProvider.notifier).state =
                          severityFilter == 'critical' ? null : 'critical',
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: Text(l10n.filterHigh),
                  selected: severityFilter == 'high',
                  onSelected: (_) =>
                      ref.read(vulnSeverityFilterProvider.notifier).state =
                          severityFilter == 'high' ? null : 'high',
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: Text(l10n.filterMedium),
                  selected: severityFilter == 'medium',
                  onSelected: (_) =>
                      ref.read(vulnSeverityFilterProvider.notifier).state =
                          severityFilter == 'medium' ? null : 'medium',
                ),
                const SizedBox(width: 8),
                FilterChip(
                  label: Text(l10n.filterLow),
                  selected: severityFilter == 'low',
                  onSelected: (_) =>
                      ref.read(vulnSeverityFilterProvider.notifier).state =
                          severityFilter == 'low' ? null : 'low',
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

          Expanded(
            child: filteredVulns.when(
              data: (vulns) {
                if (vulns.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.bug_report_outlined,
                            size: 48,
                            color: theme.colorScheme.onSurfaceVariant),
                        const SizedBox(height: 8),
                        Text(l10n.noVulnerabilitiesFound,
                            style: theme.textTheme.bodyLarge),
                      ],
                    ),
                  );
                }

                return RefreshIndicator(
                  onRefresh: () async =>
                      ref.invalidate(vulnerabilitiesProvider),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    itemCount: vulns.length,
                    itemBuilder: (context, index) =>
                        _VulnerabilityTile(vuln: vulns[index]),
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
                  child:
                      Icon(Icons.bug_report, size: 20, color: severityColor),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(vuln.cveId ?? 'Unknown',
                          style: theme.textTheme.titleSmall),
                      if (vuln.software != null)
                        Text(vuln.software!,
                            style: theme.textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurfaceVariant)),
                      Row(
                        children: [
                          if (vuln.cvssScore != null)
                            Text(
                              'CVSS ${vuln.cvssScore!.toStringAsFixed(1)}',
                              style: theme.textTheme.labelSmall
                                  ?.copyWith(color: severityColor),
                            ),
                          if (vuln.deviceCount != null) ...[
                            const SizedBox(width: 12),
                            Icon(Icons.devices,
                                size: 14,
                                color: colorScheme.onSurfaceVariant),
                            const SizedBox(width: 2),
                            Text('${vuln.deviceCount}',
                                style: theme.textTheme.labelSmall),
                          ],
                          if (vuln.kevScore != null &&
                              vuln.kevScore! > 0) ...[
                            const SizedBox(width: 12),
                            Icon(Icons.warning_amber,
                                size: 14, color: colorScheme.error),
                            const SizedBox(width: 2),
                            Text('KEV',
                                style: theme.textTheme.labelSmall
                                    ?.copyWith(color: colorScheme.error)),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
                if (vuln.severity != null)
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: severityColor.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(vuln.severity!,
                        style: theme.textTheme.labelSmall
                            ?.copyWith(color: severityColor)),
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
