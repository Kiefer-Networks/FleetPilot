import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../domain/entities/behavioral_detection.dart';
import '../../providers/tenant_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

class BehavioralDetectionsPage extends ConsumerStatefulWidget {
  const BehavioralDetectionsPage({super.key});

  @override
  ConsumerState<BehavioralDetectionsPage> createState() =>
      _BehavioralDetectionsPageState();
}

class _BehavioralDetectionsPageState
    extends ConsumerState<BehavioralDetectionsPage> {
  final _searchController = SearchController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  int _countActiveFilters() {
    var count = 0;
    if (ref.read(behavioralSeverityFilterProvider) != null) count++;
    return count;
  }

  void _clearAllFilters() {
    _searchController.clear();
    ref.read(behavioralSearchQueryProvider.notifier).state = '';
    ref.read(behavioralSeverityFilterProvider.notifier).state = null;
    ref.read(behavioralSortAscProvider.notifier).state = true;
    setState(() {});
  }

  Future<void> _showFilterSheet() async {
    final result = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (_) => _BehavioralFilterBottomSheet(ref: ref),
    );
    if (result == true) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final filteredDetections = ref.watch(filteredBehavioralDetectionsProvider);
    final severityFilter = ref.watch(behavioralSeverityFilterProvider);
    final activeFilterCount = _countActiveFilters();

    return Scaffold(
      appBar: AppBar(title: Text(l10n.behavioralDetections)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.invalidate(behavioralDetectionsProvider),
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
                    hintText: l10n.searchBehavioralDetections,
                    leading: const Icon(Icons.search, size: 20),
                    trailing: [
                      if (_searchController.text.isNotEmpty)
                        IconButton(
                          icon: const Icon(Icons.clear, size: 20),
                          tooltip: l10n.clearSearch,
                          onPressed: () {
                            _searchController.clear();
                            ref
                                    .read(
                                      behavioralSearchQueryProvider.notifier,
                                    )
                                    .state =
                                '';
                            setState(() {});
                          },
                        ),
                    ],
                    onChanged: (query) {
                      ref.read(behavioralSearchQueryProvider.notifier).state =
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
                  if (severityFilter != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: InputChip(
                        label: Text(severityFilter),
                        onDeleted: () =>
                            ref
                                    .read(
                                      behavioralSeverityFilterProvider.notifier,
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
            child: filteredDetections.when(
              data: (detections) {
                if (detections.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.psychology_outlined,
                          size: 48,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          l10n.noBehavioralDetections,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () async =>
                      ref.invalidate(behavioralDetectionsProvider),
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 12,
                      bottom: 80,
                    ),
                    itemCount: detections.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                          child: Text(
                            l10n.behavioralDetectionCount(detections.length),
                            style: theme.textTheme.labelMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        );
                      }
                      return _BehavioralDetectionTile(
                        detection: detections[index - 1],
                      );
                    },
                  ),
                );
              },
              loading: () => const LoadingWidget(),
              error: (error, _) => ErrorStateWidget(
                failure: error,
                onRetry: () => ref.invalidate(behavioralDetectionsProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BehavioralFilterBottomSheet extends StatelessWidget {
  const _BehavioralFilterBottomSheet({required this.ref});

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);

    final severityOptions = {
      'Critical': l10n.severityCritical,
      'High': l10n.severityHigh,
      'Medium': l10n.severityMedium,
      'Low': l10n.severityLow,
    };

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.45,
      minChildSize: 0.3,
      maxChildSize: 0.65,
      builder: (context, scrollController) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            final severity = ref.read(behavioralSeverityFilterProvider);
            final sortAsc = ref.read(behavioralSortAscProvider);

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
                          ref
                                  .read(
                                    behavioralSeverityFilterProvider.notifier,
                                  )
                                  .state =
                              null;
                          ref.read(behavioralSortAscProvider.notifier).state =
                              true;
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
                                        behavioralSeverityFilterProvider
                                            .notifier,
                                      )
                                      .state =
                                  null;
                              setSheetState(() {});
                            },
                          ),
                          for (final entry in severityOptions.entries)
                            FilterChip(
                              label: Text(entry.value),
                              selected:
                                  severity?.toLowerCase() ==
                                  entry.key.toLowerCase(),
                              onSelected: (_) {
                                ref
                                        .read(
                                          behavioralSeverityFilterProvider
                                              .notifier,
                                        )
                                        .state =
                                    severity?.toLowerCase() ==
                                        entry.key.toLowerCase()
                                    ? null
                                    : entry.key;
                                setSheetState(() {});
                              },
                            ),
                        ],
                      ),
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
                              ref
                                      .read(behavioralSortAscProvider.notifier)
                                      .state =
                                  true;
                              setSheetState(() {});
                            },
                          ),
                          FilterChip(
                            avatar: const Icon(Icons.arrow_upward, size: 16),
                            label: Text(l10n.sortZA),
                            selected: !sortAsc,
                            onSelected: (_) {
                              ref
                                      .read(behavioralSortAscProvider.notifier)
                                      .state =
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

class _BehavioralDetectionTile extends StatelessWidget {
  const _BehavioralDetectionTile({required this.detection});

  final BehavioralDetection detection;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final severityColor = _severityColor(detection.severity, colorScheme);

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
                  color: severityColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(Icons.psychology, size: 20, color: severityColor),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      detection.threatName ?? detection.id ?? 'Unknown',
                      style: theme.textTheme.titleSmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (detection.deviceName != null)
                      Text(
                        detection.deviceName!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    if (detection.processName != null)
                      Text(
                        detection.processName!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        if (detection.classification != null) ...[
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: colorScheme.secondaryContainer,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              detection.classification!,
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: colorScheme.onSecondaryContainer,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                        if (detection.detectionDate != null) ...[
                          Icon(
                            Icons.schedule,
                            size: 14,
                            color: colorScheme.onSurfaceVariant,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            _formatDateTime(detection.detectionDate!),
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
              if (detection.status != null)
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
                    detection.status!,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: severityColor,
                    ),
                  ),
                ),
            ],
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

  String _formatDateTime(String dateStr) {
    final parsed = DateTime.tryParse(dateStr);
    if (parsed == null) return dateStr;
    final local = parsed.toLocal();
    return '${local.year}-${local.month.toString().padLeft(2, '0')}-${local.day.toString().padLeft(2, '0')} '
        '${local.hour.toString().padLeft(2, '0')}:${local.minute.toString().padLeft(2, '0')}';
  }
}
