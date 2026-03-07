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

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final filteredThreats = ref.watch(filteredThreatsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.threats)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: SearchBar(
              controller: _searchController,
              hintText: l10n.searchThreats,
              leading: const Icon(Icons.search, size: 20),
              trailing: [
                if (_searchController.text.isNotEmpty)
                  IconButton(
                    icon: const Icon(Icons.clear, size: 20),
                    onPressed: () {
                      _searchController.clear();
                      ref.read(threatSearchQueryProvider.notifier).state = '';
                      setState(() {});
                    },
                  ),
              ],
              onChanged: (query) {
                ref.read(threatSearchQueryProvider.notifier).state = query;
                setState(() {});
              },
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: filteredThreats.when(
              data: (threats) {
                if (threats.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.shield_outlined,
                            size: 48,
                            color: theme.colorScheme.onSurfaceVariant),
                        const SizedBox(height: 8),
                        Text(l10n.noThreatsFound,
                            style: theme.textTheme.bodyLarge),
                      ],
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () async => ref.invalidate(threatsProvider),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    itemCount: threats.length,
                    itemBuilder: (context, index) =>
                        _ThreatTile(threat: threats[index]),
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

class _ThreatTile extends StatelessWidget {
  const _ThreatTile({required this.threat});

  final Threat threat;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isMalware = threat.classification?.toLowerCase() == 'malware';
    final statusColor = _statusColor(threat.status, colorScheme);

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
                      Text(threat.deviceName!,
                          style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant)),
                    if (threat.filePath != null)
                      Text(threat.filePath!,
                          style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis),
                  ],
                ),
              ),
              if (threat.status != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(threat.status!,
                      style: theme.textTheme.labelSmall
                          ?.copyWith(color: statusColor)),
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
    if (s == 'not_quarantined' || s == 'detected') return cs.error;
    if (s == 'released') return Colors.orange;
    return cs.onSurfaceVariant;
  }
}
