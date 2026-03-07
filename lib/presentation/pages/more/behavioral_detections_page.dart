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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final filteredDetections = ref.watch(filteredBehavioralDetectionsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.behavioralDetections)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: SearchBar(
              controller: _searchController,
              hintText: l10n.searchBehavioralDetections,
              leading: const Icon(Icons.search, size: 20),
              trailing: [
                if (_searchController.text.isNotEmpty)
                  IconButton(
                    icon: const Icon(Icons.clear, size: 20),
                    onPressed: () {
                      _searchController.clear();
                      ref.read(behavioralSearchQueryProvider.notifier).state =
                          '';
                      setState(() {});
                    },
                  ),
              ],
              onChanged: (query) {
                ref.read(behavioralSearchQueryProvider.notifier).state = query;
                setState(() {});
              },
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
          ),
          const SizedBox(height: 12),
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
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    itemCount: detections.length,
                    itemBuilder: (context, index) =>
                        _BehavioralDetectionTile(detection: detections[index]),
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
