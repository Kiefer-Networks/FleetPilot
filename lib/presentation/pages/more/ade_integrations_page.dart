import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/ade_integration.dart';
import '../../providers/tenant_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

class AdeIntegrationsPage extends ConsumerWidget {
  const AdeIntegrationsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final integrationsAsync = ref.watch(adeIntegrationsProvider);

    return Scaffold(
      appBar: AppBar(title: Text(l10n.adeIntegrations)),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/more/ade-integrations/create'),
        tooltip: l10n.adeIntegrations,
        child: const Icon(Icons.add),
      ),
      body: integrationsAsync.when(
        data: (integrations) {
          if (integrations.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.device_hub_outlined,
                    size: 48,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.noAdeIntegrations,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () async => ref.invalidate(adeIntegrationsProvider),
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: integrations.length,
              itemBuilder: (context, index) =>
                  _AdeIntegrationTile(integration: integrations[index]),
            ),
          );
        },
        loading: () => const LoadingWidget(),
        error: (error, _) => ErrorStateWidget(
          failure: error,
          onRetry: () => ref.invalidate(adeIntegrationsProvider),
        ),
      ),
    );
  }
}

class _AdeIntegrationTile extends StatelessWidget {
  const _AdeIntegrationTile({required this.integration});

  final AdeIntegration integration;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);

    final isValid = integration.isTokenValid;
    final statusColor = isValid ? colorScheme.primary : colorScheme.error;

    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => context.push('/more/ade-integrations/${integration.id}'),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.device_hub, color: statusColor, size: 24),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      integration.name ?? integration.serverName ?? 'ADE',
                      style: theme.textTheme.titleSmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (integration.orgName != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        integration.orgName!,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: statusColor.withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            isValid ? l10n.tokenValid : l10n.tokenExpired,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: statusColor,
                            ),
                          ),
                        ),
                        if (integration.deviceCount != null) ...[
                          const SizedBox(width: 12),
                          Icon(
                            Icons.devices,
                            size: 14,
                            color: colorScheme.onSurfaceVariant,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${integration.deviceCount}',
                            style: theme.textTheme.labelSmall,
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                size: 20,
                color: colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
