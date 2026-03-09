import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../core/di/providers.dart';
import '../../../domain/entities/ade_device.dart';
import '../../../domain/entities/ade_integration.dart';
import '../../providers/blueprint_providers.dart';
import '../../providers/tenant_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

class AdeDetailPage extends ConsumerWidget {
  const AdeDetailPage({super.key, required this.integrationId});

  final String integrationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final integrationsAsync = ref.watch(adeIntegrationsProvider);

    return integrationsAsync.when(
      data: (integrations) {
        final integration = integrations.cast<AdeIntegration?>().firstWhere(
          (i) => i!.id == integrationId,
          orElse: () => null,
        );
        if (integration == null) {
          return Scaffold(
            appBar: AppBar(),
            body: ErrorStateWidget(
              failure: Exception('Integration not found'),
              onRetry: () => ref.invalidate(adeIntegrationsProvider),
            ),
          );
        }
        return _AdeDetailScaffold(integration: integration);
      },
      loading: () => Scaffold(appBar: AppBar(), body: const LoadingWidget()),
      error: (error, _) => Scaffold(
        appBar: AppBar(),
        body: ErrorStateWidget(
          failure: error,
          onRetry: () => ref.invalidate(adeIntegrationsProvider),
        ),
      ),
    );
  }
}

class _AdeDetailScaffold extends ConsumerWidget {
  const _AdeDetailScaffold({required this.integration});

  final AdeIntegration integration;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final devicesAsync = ref.watch(adeDevicesProvider(integration.id!));

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(integration.name ?? 'ADE'),
            floating: true,
            snap: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.edit_outlined),
                tooltip: l10n.editIntegration,
                onPressed: () => _showEditDialog(context, ref),
              ),
              PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == 'delete') {
                    _showDeleteConfirmation(context, ref);
                  }
                },
                itemBuilder: (context) => [
                  PopupMenuItem<String>(
                    value: 'delete',
                    child: Text(
                      l10n.deleteIntegration,
                      style: TextStyle(color: colorScheme.error),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Info card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      decoration: BoxDecoration(
                        color: colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        Icons.device_hub,
                        color: colorScheme.onPrimaryContainer,
                        size: 28,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      integration.name ?? 'ADE',
                      style: theme.textTheme.titleLarge,
                    ),
                    if (integration.orgName != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        integration.orgName!,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                    const SizedBox(height: 12),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: integration.isTokenValid
                            ? colorScheme.primaryContainer
                            : colorScheme.errorContainer,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        integration.isTokenValid
                            ? l10n.tokenValid
                            : l10n.tokenExpired,
                        style: theme.textTheme.labelMedium?.copyWith(
                          color: integration.isTokenValid
                              ? colorScheme.onPrimaryContainer
                              : colorScheme.onErrorContainer,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Details card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (integration.orgEmail != null)
                      _InfoRow(
                        icon: Icons.email_outlined,
                        label: l10n.email,
                        value: integration.orgEmail!,
                      ),
                    if (integration.orgPhone != null)
                      _InfoRow(
                        icon: Icons.phone_outlined,
                        label: l10n.lostModePhone,
                        value: integration.orgPhone!,
                      ),
                    if (integration.tokenExpiryDate != null)
                      _InfoRow(
                        icon: Icons.schedule,
                        label: l10n.tokenExpiry,
                        value: _formatDate(integration.tokenExpiryDate!),
                      ),
                    if (integration.deviceCount != null)
                      _InfoRow(
                        icon: Icons.devices,
                        label: l10n.devices,
                        value: '${integration.deviceCount}',
                      ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Public Key & Renew Token card
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.key, color: colorScheme.primary),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            l10n.publicKey,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        OutlinedButton.icon(
                          onPressed: () async {
                            try {
                              final api = await ref.read(
                                tenantApiProvider.future,
                              );
                              final key = await api.getAdePublicKey();
                              if (context.mounted) {
                                Clipboard.setData(ClipboardData(text: key));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(l10n.publicKeyCopied)),
                                );
                              }
                            } catch (_) {
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(l10n.actionFailed)),
                                );
                              }
                            }
                          },
                          icon: const Icon(Icons.copy, size: 18),
                          label: Text(l10n.tapToCopy),
                        ),
                        OutlinedButton.icon(
                          onPressed: () async {
                            try {
                              final api = await ref.read(
                                tenantApiProvider.future,
                              );
                              final key = await api.getAdePublicKey();
                              final result = await FilePicker.platform.saveFile(
                                dialogTitle: l10n.downloadPublicKey,
                                fileName: 'ade_public_key.pem',
                                bytes: Uint8List.fromList(utf8.encode(key)),
                              );
                              if (result != null && context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(l10n.publicKeySaved)),
                                );
                              }
                            } catch (_) {
                              if (context.mounted) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(l10n.actionFailed)),
                                );
                              }
                            }
                          },
                          icon: const Icon(Icons.download, size: 18),
                          label: Text(l10n.downloadPublicKey),
                        ),
                      ],
                    ),
                    const Divider(height: 24),
                    Row(
                      children: [
                        Icon(Icons.refresh, color: colorScheme.primary),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            l10n.renewToken,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        FilledButton.icon(
                          onPressed: () => _showRenewTokenDialog(context, ref),
                          icon: const Icon(Icons.vpn_key_outlined),
                          label: Text(l10n.renewToken),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            // ADE Devices
            Text(
              l10n.adeDevices,
              style: theme.textTheme.titleSmall?.copyWith(
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(height: 8),
            devicesAsync.when(
              data: (devices) {
                if (devices.isEmpty) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Center(
                        child: Column(
                          children: [
                            Icon(
                              Icons.devices_other,
                              size: 40,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              l10n.noAdeDevices,
                              style: theme.textTheme.bodyMedium?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
                return Column(
                  children: devices
                      .map((d) => _AdeDeviceTile(device: d))
                      .toList(),
                );
              },
              loading: () => const Padding(
                padding: EdgeInsets.all(24),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (error, _) => ErrorStateWidget(
                failure: error,
                onRetry: () =>
                    ref.invalidate(adeDevicesProvider(integration.id!)),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Edit dialog
  // ---------------------------------------------------------------------------

  void _showEditDialog(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final phoneController = TextEditingController(
      text: integration.orgPhone ?? '',
    );
    final emailController = TextEditingController(
      text: integration.orgEmail ?? '',
    );
    var selectedBlueprintId = integration.defaultBlueprintId;
    final blueprintsAsync = ref.read(blueprintsProvider);

    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (dialogContext, setDialogState) {
            return AlertDialog(
              title: Text(l10n.editIntegration),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        labelText: l10n.phone,
                        border: const OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: l10n.email,
                        border: const OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    blueprintsAsync.when(
                      data: (blueprints) => DropdownButtonFormField<String>(
                        initialValue:
                            blueprints.any((bp) => bp.id == selectedBlueprintId)
                            ? selectedBlueprintId
                            : null,
                        decoration: InputDecoration(
                          labelText: l10n.defaultBlueprint,
                          border: const OutlineInputBorder(),
                        ),
                        isExpanded: true,
                        items: blueprints
                            .map(
                              (bp) => DropdownMenuItem(
                                value: bp.id,
                                child: Text(
                                  bp.name,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            )
                            .toList(),
                        onChanged: (value) {
                          setDialogState(() {
                            selectedBlueprintId = value;
                          });
                        },
                      ),
                      loading: () => const LinearProgressIndicator(),
                      error: (_, _) => TextField(
                        controller: TextEditingController(
                          text: selectedBlueprintId ?? '',
                        ),
                        decoration: InputDecoration(
                          labelText: l10n.defaultBlueprintId,
                          border: const OutlineInputBorder(),
                        ),
                        onChanged: (v) => selectedBlueprintId = v,
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(dialogContext),
                  child: Text(l10n.cancel),
                ),
                FilledButton(
                  onPressed: () async {
                    Navigator.pop(dialogContext);
                    try {
                      final api = await ref.read(tenantApiProvider.future);
                      await api.updateAdeIntegration(integration.id!, {
                        'phone': phoneController.text,
                        'email': emailController.text,
                        if (selectedBlueprintId != null)
                          'blueprint_id': selectedBlueprintId!,
                      });
                      ref.invalidate(adeIntegrationsProvider);
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.integrationUpdated)),
                        );
                      }
                    } catch (_) {
                      if (context.mounted) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.actionFailed)),
                        );
                      }
                    }
                  },
                  child: Text(l10n.save),
                ),
              ],
            );
          },
        );
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Delete confirmation
  // ---------------------------------------------------------------------------

  void _showDeleteConfirmation(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final colorScheme = Theme.of(context).colorScheme;

    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Text(l10n.deleteIntegration),
          content: Text(l10n.deleteIntegrationConfirm),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext),
              child: Text(l10n.cancel),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: colorScheme.error,
                foregroundColor: colorScheme.onError,
              ),
              onPressed: () async {
                Navigator.pop(dialogContext);
                try {
                  final api = await ref.read(tenantApiProvider.future);
                  await api.deleteAdeIntegration(integration.id!);
                  ref.invalidate(adeIntegrationsProvider);
                  if (context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(l10n.integrationDeleted)),
                    );
                    Navigator.of(context).pop();
                  }
                } catch (_) {
                  if (context.mounted) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
                  }
                }
              },
              child: Text(l10n.delete),
            ),
          ],
        );
      },
    );
  }

  // ---------------------------------------------------------------------------
  // Renew Token confirmation
  // ---------------------------------------------------------------------------

  void _showRenewTokenDialog(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    String? filePath;
    String? fileName;
    bool uploading = false;
    final phoneController = TextEditingController(
      text: integration.orgPhone ?? '',
    );
    final emailController = TextEditingController(
      text: integration.orgEmail ?? '',
    );

    showDialog<void>(
      context: context,
      builder: (dialogContext) {
        return StatefulBuilder(
          builder: (dialogContext, setDialogState) {
            return AlertDialog(
              title: Text(l10n.renewToken),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.renewTokenDescription,
                      style: theme.textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        labelText: l10n.phone,
                        prefixIcon: const Icon(Icons.phone_outlined),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                    const SizedBox(height: 12),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        labelText: l10n.email,
                        prefixIcon: const Icon(Icons.email_outlined),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    if (fileName != null)
                      Card(
                        color: colorScheme.primaryContainer,
                        child: ListTile(
                          leading: Icon(
                            Icons.insert_drive_file,
                            color: colorScheme.onPrimaryContainer,
                          ),
                          title: Text(
                            fileName!,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: colorScheme.onPrimaryContainer,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: colorScheme.onPrimaryContainer,
                            ),
                            onPressed: () => setDialogState(() {
                              filePath = null;
                              fileName = null;
                            }),
                          ),
                        ),
                      )
                    else
                      FilledButton.tonalIcon(
                        onPressed: () async {
                          final result = await FilePicker.platform.pickFiles(
                            type: FileType.custom,
                            allowedExtensions: ['p7m'],
                          );
                          if (result != null &&
                              result.files.single.path != null) {
                            setDialogState(() {
                              filePath = result.files.single.path;
                              fileName = result.files.single.name;
                            });
                          }
                        },
                        icon: const Icon(Icons.file_open_outlined),
                        label: Text(l10n.selectTokenFile),
                      ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(dialogContext),
                  child: Text(l10n.cancel),
                ),
                FilledButton(
                  onPressed:
                      filePath != null &&
                          phoneController.text.isNotEmpty &&
                          emailController.text.isNotEmpty &&
                          !uploading
                      ? () async {
                          setDialogState(() => uploading = true);
                          try {
                            final api = await ref.read(
                              tenantApiProvider.future,
                            );
                            await api.renewAdeToken(
                              integration.id!,
                              filePath: filePath!,
                              fileName: fileName ?? 'token.p7m',
                              phone: phoneController.text,
                              email: emailController.text,
                            );
                            ref.invalidate(adeIntegrationsProvider);
                            if (dialogContext.mounted) {
                              Navigator.pop(dialogContext);
                            }
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(l10n.tokenRenewed)),
                              );
                            }
                          } catch (_) {
                            setDialogState(() => uploading = false);
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(l10n.actionFailed)),
                              );
                            }
                          }
                        }
                      : null,
                  child: uploading
                      ? const SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        )
                      : Text(l10n.renewToken),
                ),
              ],
            );
          },
        );
      },
    );
  }

  String _formatDate(String dateStr) {
    final parsed = DateTime.tryParse(dateStr);
    if (parsed == null) return dateStr;
    return '${parsed.year}-${parsed.month.toString().padLeft(2, '0')}-${parsed.day.toString().padLeft(2, '0')}';
  }
}

class _AdeDeviceTile extends StatelessWidget {
  const _AdeDeviceTile({required this.device});

  final AdeDevice device;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      margin: const EdgeInsets.only(bottom: 4),
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
                Icons.phone_iphone,
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
                    device.serialNumber ?? 'Unknown',
                    style: theme.textTheme.bodyMedium,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (device.model != null)
                    Text(
                      device.model!,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                ],
              ),
            ),
            if (device.profileStatus != null)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  device.profileStatus!,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({
    required this.icon,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          Icon(icon, size: 20, color: colorScheme.onSurfaceVariant),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                Text(value, style: theme.textTheme.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
