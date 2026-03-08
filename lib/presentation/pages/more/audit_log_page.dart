import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../domain/entities/audit_event.dart';
import '../../providers/tenant_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

class AuditLogPage extends ConsumerStatefulWidget {
  const AuditLogPage({super.key});

  @override
  ConsumerState<AuditLogPage> createState() => _AuditLogPageState();
}

class _AuditLogPageState extends ConsumerState<AuditLogPage> {
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
    final filteredEvents = ref.watch(filteredAuditEventsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.auditLog)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
            child: SearchBar(
              controller: _searchController,
              hintText: l10n.searchAuditLog,
              leading: const Icon(Icons.search, size: 20),
              trailing: [
                if (_searchController.text.isNotEmpty)
                  IconButton(
                    icon: const Icon(Icons.clear, size: 20),
                    tooltip: l10n.clearSearch,
                    onPressed: () {
                      _searchController.clear();
                      ref.read(auditSearchQueryProvider.notifier).state = '';
                      setState(() {});
                    },
                  ),
              ],
              onChanged: (query) {
                ref.read(auditSearchQueryProvider.notifier).state = query;
                setState(() {});
              },
              padding: const WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 8),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: filteredEvents.when(
              data: (events) {
                if (events.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.history,
                          size: 48,
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          l10n.noAuditEvents,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  );
                }
                return RefreshIndicator(
                  onRefresh: () async => ref.invalidate(auditEventsProvider),
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: events.length,
                    itemBuilder: (context, index) =>
                        _AuditEventTile(event: events[index]),
                  ),
                );
              },
              loading: () => const LoadingWidget(),
              error: (error, _) => ErrorStateWidget(
                failure: error,
                onRetry: () => ref.invalidate(auditEventsProvider),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AuditEventTile extends StatelessWidget {
  const _AuditEventTile({required this.event});

  final AuditEvent event;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final icon = _iconForAction(event.action);
    // Build a human-readable description from available fields.
    final description = _buildDescription(event);
    final actor = event.actorId ?? '';
    final actorLabel =
        event.actorType != null ? '${event.actorType}: $actor' : actor;

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                size: 20,
                color: colorScheme.onSecondaryContainer,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    description,
                    style: theme.textTheme.bodyMedium,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      if (actorLabel.isNotEmpty) ...[
                        Icon(
                          Icons.person_outline,
                          size: 14,
                          color: colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            actorLabel,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                      ],
                      if (event.occurredAt != null) ...[
                        Icon(
                          Icons.schedule,
                          size: 14,
                          color: colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          _formatDateTime(event.occurredAt!),
                          style: theme.textTheme.labelSmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ],
                  ),
                  if (event.targetType != null) ...[
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Icon(
                          _iconForTargetType(event.targetType),
                          size: 14,
                          color: colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 4),
                        Flexible(
                          child: Text(
                            event.targetComponent != null
                                ? '${event.targetType} (${event.targetComponent})'
                                : event.targetType!,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Build a human-readable description line from the event.
  String _buildDescription(AuditEvent e) {
    final parts = <String>[];
    if (e.action != null) parts.add(e.action!);
    if (e.targetType != null) parts.add(e.targetType!);
    if (e.newState != null && e.newState!.isNotEmpty) {
      parts.add('— ${e.newState}');
    }
    if (parts.isEmpty) return e.id ?? '';
    return parts.join(' ');
  }

  IconData _iconForAction(String? action) {
    return switch (action?.toLowerCase()) {
      'create' => Icons.add_circle_outline,
      'update' || 'modify' => Icons.edit_outlined,
      'delete' || 'remove' => Icons.delete_outline,
      'detect' => Icons.security,
      'enroll' => Icons.devices,
      'lock' => Icons.lock_outline,
      'wipe' || 'erase' => Icons.cleaning_services,
      'assign' || 'reassign' => Icons.assignment_outlined,
      _ => Icons.history,
    };
  }

  IconData _iconForTargetType(String? type) {
    return switch (type?.toLowerCase()) {
      'device' => Icons.devices,
      'blueprint' => Icons.layers,
      'library_item' || 'library-item' => Icons.library_books,
      'user' => Icons.person,
      'admin' => Icons.admin_panel_settings,
      'vulnerability' || 'edr' => Icons.security,
      _ => Icons.label_outline,
    };
  }

  String _formatDateTime(String dateStr) {
    final parsed = DateTime.tryParse(dateStr);
    if (parsed == null) return dateStr;
    final local = parsed.toLocal();
    return '${local.year}-${local.month.toString().padLeft(2, '0')}-${local.day.toString().padLeft(2, '0')} '
        '${local.hour.toString().padLeft(2, '0')}:${local.minute.toString().padLeft(2, '0')}';
  }
}
