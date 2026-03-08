import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:latlong2/latlong.dart';

import '../../../core/di/providers.dart';
import '../../../core/extensions/datetime_extensions.dart';
import '../../../core/utils/biometric_service.dart';
import '../../../domain/entities/device.dart';
import '../../../domain/entities/device_action.dart';
import '../../../domain/entities/device_activity.dart';
import '../../../domain/entities/device_app.dart';
import '../../../domain/entities/device_command.dart';
import '../../../domain/entities/device_details.dart';
import '../../../domain/entities/device_note.dart';
import '../../../domain/entities/device_status.dart';
import '../../providers/device_providers.dart';
import '../../providers/security_providers.dart';
import '../../widgets/common/confirm_dialog.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';
import '../../widgets/pin_dialog.dart';
import '../../widgets/device/platform_icon.dart';

/// Device detail screen with tabbed layout and responsive phone/tablet support.
class DeviceDetailPage extends ConsumerWidget {
  const DeviceDetailPage({super.key, required this.deviceId});

  final String deviceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceAsync = ref.watch(deviceDetailProvider(deviceId));

    return deviceAsync.when(
      data: (device) => _DeviceDetailScaffold(device: device),
      loading: () => Scaffold(appBar: AppBar(), body: const LoadingWidget()),
      error: (error, _) => Scaffold(
        appBar: AppBar(),
        body: ErrorStateWidget(
          failure: error,
          onRetry: () => ref.invalidate(deviceDetailProvider(deviceId)),
        ),
      ),
    );
  }
}

class _DeviceDetailScaffold extends ConsumerWidget {
  const _DeviceDetailScaffold({required this.device});

  final Device device;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final isMac = device.platform?.toLowerCase() == 'mac';
    final isMobile = !isMac;
    final tabCount = isMobile ? 8 : 7;
    final detailsAsync = ref.watch(deviceDetailsProvider(device.deviceId));
    final isLostMode = detailsAsync.value?.lostMode?.isEnabled ?? false;

    return DefaultTabController(
      length: tabCount,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: Text(
                device.deviceName ?? device.serialNumber ?? l10n.unknownDevice,
              ),
              floating: true,
              snap: true,
              actions: [
                IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  tooltip: l10n.editDevice,
                  onPressed: () => _showEditDeviceDialog(context, ref),
                ),
                PopupMenuButton<String>(
                  icon: const Icon(Icons.more_vert),
                  tooltip: l10n.moreActions,
                  onSelected: (value) {
                    if (value == '_delete_device') {
                      _deleteDevice(context, ref);
                    } else if (value == '_cancel_lost_mode') {
                      _cancelLostMode(context, ref);
                    } else {
                      final action = DeviceAction.values.firstWhere(
                        (a) => a.apiPath == value,
                      );
                      _executeAction(context, ref, action);
                    }
                  },
                  itemBuilder: (context) => [
                    // Common actions
                    _menuItem(
                      DeviceAction.lock,
                      Icons.lock_outline,
                      l10n.actionLock,
                    ),
                    _menuItem(
                      DeviceAction.sendBlankPush,
                      Icons.send_outlined,
                      l10n.actionBlankPush,
                    ),
                    _menuItem(
                      DeviceAction.updateInventory,
                      Icons.inventory_2_outlined,
                      l10n.actionUpdateInventory,
                    ),
                    _menuItem(
                      DeviceAction.dailyCheckIn,
                      Icons.today,
                      l10n.actionDailyCheckIn,
                    ),
                    _menuItem(
                      DeviceAction.setName,
                      Icons.edit_outlined,
                      l10n.actionSetName,
                    ),
                    _menuItem(
                      DeviceAction.renewMdmProfile,
                      Icons.sync,
                      l10n.actionRenewMdm,
                    ),
                    _menuItem(
                      DeviceAction.restart,
                      Icons.restart_alt,
                      l10n.actionRestart,
                    ),
                    // Mac-only actions
                    if (isMac) ...[
                      const PopupMenuDivider(),
                      _menuItem(
                        DeviceAction.reinstallAgent,
                        Icons.install_desktop,
                        l10n.actionReinstallAgent,
                      ),
                      _menuItem(
                        DeviceAction.remoteDesktop,
                        Icons.desktop_windows,
                        l10n.actionRemoteDesktop,
                      ),
                      _menuItem(
                        DeviceAction.deleteUser,
                        Icons.person_remove,
                        l10n.actionDeleteUser,
                      ),
                      _menuItem(
                        DeviceAction.unlockAccount,
                        Icons.lock_open,
                        l10n.actionUnlockAccount,
                      ),
                    ],
                    // Mobile-only actions
                    if (isMobile) ...[
                      const PopupMenuDivider(),
                      if (!isLostMode)
                        _menuItem(
                          DeviceAction.enableLostMode,
                          Icons.location_off,
                          l10n.actionLostMode,
                        ),
                      if (isLostMode) ...[
                        _menuItem(
                          DeviceAction.disableLostMode,
                          Icons.location_on,
                          l10n.actionDisableLostMode,
                        ),
                        _menuItem(
                          DeviceAction.playLostModeSound,
                          Icons.volume_up,
                          l10n.actionPlayLostModeSound,
                        ),
                        _menuItem(
                          DeviceAction.updateLocation,
                          Icons.my_location,
                          l10n.actionUpdateLocation,
                        ),
                        PopupMenuItem<String>(
                          value: '_cancel_lost_mode',
                          child: ListTile(
                            leading: const Icon(Icons.cancel_outlined),
                            title: Text(l10n.cancelLostMode),
                            contentPadding: EdgeInsets.zero,
                            dense: true,
                          ),
                        ),
                      ],
                      _menuItem(
                        DeviceAction.clearPasscode,
                        Icons.pin_outlined,
                        l10n.actionClearPasscode,
                      ),
                    ],
                    // Destructive actions
                    const PopupMenuDivider(),
                    _menuItem(
                      DeviceAction.shutdown,
                      Icons.power_settings_new,
                      l10n.actionShutdown,
                      isDestructive: true,
                      theme: theme,
                    ),
                    _menuItem(
                      DeviceAction.erase,
                      Icons.delete_forever,
                      l10n.actionErase,
                      isDestructive: true,
                      theme: theme,
                    ),
                    PopupMenuItem<String>(
                      value: '_delete_device',
                      child: ListTile(
                        leading: Icon(
                          Icons.delete_outline,
                          color: theme.colorScheme.error,
                        ),
                        title: Text(
                          l10n.deleteDevice,
                          style: TextStyle(color: theme.colorScheme.error),
                        ),
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                tabs: [
                  Tab(text: l10n.tabOverview),
                  Tab(text: l10n.tabStatus),
                  Tab(text: l10n.tabApps),
                  Tab(text: l10n.tabSecrets),
                  Tab(text: l10n.tabNotes),
                  Tab(text: l10n.tabActivity),
                  Tab(text: l10n.tabCommands),
                  if (isMobile) Tab(text: l10n.tabLocation),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              _OverviewTab(device: device),
              _StatusTab(deviceId: device.deviceId),
              _AppsTab(deviceId: device.deviceId),
              _SecretsTab(deviceId: device.deviceId),
              _NotesTab(deviceId: device.deviceId),
              _ActivityTab(deviceId: device.deviceId),
              _CommandsTab(deviceId: device.deviceId),
              if (isMobile) _LocationTab(deviceId: device.deviceId),
            ],
          ),
        ),
      ),
    );
  }

  PopupMenuItem<String> _menuItem(
    DeviceAction action,
    IconData icon,
    String label, {
    bool isDestructive = false,
    ThemeData? theme,
  }) {
    return PopupMenuItem(
      value: action.apiPath,
      child: ListTile(
        leading: Icon(
          icon,
          color: isDestructive ? theme?.colorScheme.error : null,
        ),
        title: Text(
          label,
          style: isDestructive
              ? TextStyle(color: theme?.colorScheme.error)
              : null,
        ),
        contentPadding: EdgeInsets.zero,
        dense: true,
      ),
    );
  }

  Future<void> _executeAction(
    BuildContext context,
    WidgetRef ref,
    DeviceAction action,
  ) async {
    final isMac = device.platform?.toLowerCase() == 'mac';

    if (action.isDestructive) {
      final deviceName = device.deviceName ?? device.serialNumber ?? '';
      final confirmed = await showDestructiveConfirmDialog(
        context: context,
        deviceName: deviceName,
      );
      if (confirmed != true || !context.mounted) return;

      // Re-auth for destructive actions (biometric or PIN fallback)
      if (ref.read(pinEnabledProvider)) {
        bool authenticated = false;
        if (ref.read(biometricEnabledProvider)) {
          final bioService = BiometricService();
          authenticated = await bioService.authenticate(
            reason: AppLocalizations.of(context).biometricReasonDestructive,
          );
        }
        if (!authenticated && context.mounted) {
          final pin = await PinDialog.showVerifyPin(
            context,
            verifier: (pin) async =>
                ref.read(pinEnabledProvider.notifier).verifyPin(pin),
          );
          authenticated = pin != null;
        }
        if (!authenticated || !context.mounted) return;
      }
    }

    Map<String, dynamic>? body;

    // Actions that require a dialog to collect parameters
    switch (action) {
      case DeviceAction.enableLostMode:
        body = await _showLostModeDialog(context);
        if (body == null || !context.mounted) return;
      case DeviceAction.erase:
        body = await _showEraseDialog(context, isMobile: !isMac);
        if (body == null || !context.mounted) return;
      case DeviceAction.lock:
        body = await _showLockDialog(context);
        if (body == null || !context.mounted) return;
      case DeviceAction.restart when isMac:
        body = await _showRestartDialog(context);
        if (body == null || !context.mounted) return;
      case DeviceAction.setName:
        body = await _showSetNameDialog(context);
        if (body == null || !context.mounted) return;
      case DeviceAction.remoteDesktop:
        body = await _showRemoteDesktopDialog(context);
        if (body == null || !context.mounted) return;
      case DeviceAction.deleteUser:
        body = await _showDeleteUserDialog(context);
        if (body == null || !context.mounted) return;
      case DeviceAction.unlockAccount:
        body = await _showUnlockAccountDialog(context);
        if (body == null || !context.mounted) return;
      default:
        break;
    }

    final l10n = AppLocalizations.of(context);
    try {
      final useCase = await ref.read(executeDeviceActionUseCaseProvider.future);
      await useCase.call(device.deviceId, action, body: body);
      // Refresh everything after action
      ref.invalidate(deviceDetailsProvider(device.deviceId));
      ref.invalidate(deviceDetailProvider(device.deviceId));
      ref.invalidate(devicesProvider);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionSuccess)));
      }
      // Lost mode actions need a delayed re-fetch since status updates async
      if (action == DeviceAction.enableLostMode ||
          action == DeviceAction.disableLostMode ||
          action == DeviceAction.updateLocation) {
        Future.delayed(const Duration(seconds: 5), () {
          ref.invalidate(deviceDetailsProvider(device.deviceId));
          ref.invalidate(deviceDetailProvider(device.deviceId));
          ref.invalidate(devicesProvider);
        });
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('${l10n.actionFailed}: $e')));
      }
    }
  }

  Future<Map<String, dynamic>?> _showLostModeDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final messageCtl = TextEditingController();
    final phoneCtl = TextEditingController();

    return showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.actionLostMode),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: messageCtl,
              decoration: InputDecoration(
                labelText: l10n.lostModeMessage,
                border: const OutlineInputBorder(),
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: phoneCtl,
              decoration: InputDecoration(
                labelText: l10n.lostModePhone,
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 8),
            Text(
              l10n.lostModeFootnote,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(ctx).pop(<String, dynamic>{
                'Message': messageCtl.text.isEmpty
                    ? 'This device has been reported lost.'
                    : messageCtl.text,
                if (phoneCtl.text.isNotEmpty) 'PhoneNumber': phoneCtl.text,
              });
            },
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
  }

  Future<Map<String, dynamic>?> _showEraseDialog(
    BuildContext context, {
    required bool isMobile,
  }) {
    final l10n = AppLocalizations.of(context);
    if (!isMobile) {
      // Mac erase has no required body
      return Future.value(<String, dynamic>{});
    }
    return showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => _EraseDeviceDialog(l10n: l10n),
    );
  }

  Future<Map<String, dynamic>?> _showLockDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final messageCtl = TextEditingController();
    final phoneCtl = TextEditingController();

    return showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.actionLock),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: messageCtl,
              decoration: InputDecoration(
                labelText: l10n.lockMessage,
                border: const OutlineInputBorder(),
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 12),
            TextField(
              controller: phoneCtl,
              decoration: InputDecoration(
                labelText: l10n.lockPhone,
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(ctx).pop(<String, dynamic>{
                if (messageCtl.text.isNotEmpty) 'Message': messageCtl.text,
                if (phoneCtl.text.isNotEmpty) 'PhoneNumber': phoneCtl.text,
              });
            },
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
  }

  Future<Map<String, dynamic>?> _showRestartDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => _RestartDialog(l10n: l10n),
    );
  }

  Future<Map<String, dynamic>?> _showSetNameDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final nameCtl = TextEditingController(text: device.deviceName ?? '');

    return showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.actionSetName),
        content: TextField(
          controller: nameCtl,
          decoration: InputDecoration(
            labelText: l10n.actionSetNameHint,
            border: const OutlineInputBorder(),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              if (nameCtl.text.trim().isEmpty) return;
              Navigator.of(
                ctx,
              ).pop(<String, dynamic>{'DeviceName': nameCtl.text.trim()});
            },
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
  }

  Future<Map<String, dynamic>?> _showRemoteDesktopDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.actionRemoteDesktop),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text(l10n.actionRemoteDesktopEnable),
              leading: const Icon(Icons.desktop_windows),
              onTap: () => Navigator.of(
                ctx,
              ).pop(<String, dynamic>{'EnableRemoteDesktop': true}),
            ),
            ListTile(
              title: Text(l10n.actionRemoteDesktopDisable),
              leading: const Icon(Icons.desktop_access_disabled),
              onTap: () => Navigator.of(
                ctx,
              ).pop(<String, dynamic>{'EnableRemoteDesktop': false}),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.cancel),
          ),
        ],
      ),
    );
  }

  Future<Map<String, dynamic>?> _showDeleteUserDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => _DeleteUserDialog(l10n: l10n),
    );
  }

  Future<Map<String, dynamic>?> _showUnlockAccountDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final userCtl = TextEditingController();

    return showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.actionUnlockAccount),
        content: TextField(
          controller: userCtl,
          decoration: InputDecoration(
            labelText: l10n.actionDeleteUserName,
            border: const OutlineInputBorder(),
          ),
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              if (userCtl.text.trim().isEmpty) return;
              Navigator.of(
                ctx,
              ).pop(<String, dynamic>{'UserName': userCtl.text.trim()});
            },
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
  }

  Future<void> _showEditDeviceDialog(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final l10n = AppLocalizations.of(context);
    final result = await showDialog<Map<String, dynamic>>(
      context: context,
      builder: (ctx) => _EditDeviceDialog(device: device, l10n: l10n),
    );
    if (result == null || !context.mounted) return;

    try {
      final repo = await ref.read(deviceRepositoryProvider.future);
      await repo.updateDevice(device.deviceId, result);
      ref.invalidate(deviceDetailProvider(device.deviceId));
      ref.invalidate(devicesProvider);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.deviceUpdated)));
      }
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
      }
    }
  }

  Future<void> _deleteDevice(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context);
    final deviceName = device.deviceName ?? device.serialNumber ?? '';

    // Destructive confirmation
    final confirmed = await showDestructiveConfirmDialog(
      context: context,
      deviceName: deviceName,
    );
    if (confirmed != true || !context.mounted) return;

    if (ref.read(pinEnabledProvider)) {
      bool authenticated = false;
      if (ref.read(biometricEnabledProvider)) {
        final bioService = BiometricService();
        authenticated = await bioService.authenticate(
          reason: l10n.biometricReasonDestructive,
        );
      }
      if (!authenticated && context.mounted) {
        final pin = await PinDialog.showVerifyPin(
          context,
          verifier: (pin) async =>
              ref.read(pinEnabledProvider.notifier).verifyPin(pin),
        );
        authenticated = pin != null;
      }
      if (!authenticated || !context.mounted) return;
    }

    try {
      final repo = await ref.read(deviceRepositoryProvider.future);
      await repo.deleteDevice(device.deviceId);
      ref.invalidate(devicesProvider);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.deviceDeleted)));
        context.pop();
      }
    } catch (_) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
      }
    }
  }

  Future<void> _cancelLostMode(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.cancelLostMode),
        content: Text(l10n.cancelLostModeConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(l10n.confirm),
          ),
        ],
      ),
    );
    if (confirmed != true || !context.mounted) return;

    try {
      final repo = await ref.read(deviceRepositoryProvider.future);
      await repo.cancelLostMode(device.deviceId);
      ref.invalidate(deviceDetailsProvider(device.deviceId));
      ref.invalidate(deviceDetailProvider(device.deviceId));
      ref.invalidate(devicesProvider);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.lostModeCancelled)));
      }
      Future.delayed(const Duration(seconds: 5), () {
        ref.invalidate(deviceDetailsProvider(device.deviceId));
        ref.invalidate(deviceDetailProvider(device.deviceId));
        ref.invalidate(devicesProvider);
      });
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('${l10n.actionFailed}: $e')));
      }
    }
  }
}

// ---------------------------------------------------------------------------
// Edit Device Dialog
// ---------------------------------------------------------------------------
class _EditDeviceDialog extends ConsumerStatefulWidget {
  const _EditDeviceDialog({required this.device, required this.l10n});

  final Device device;
  final AppLocalizations l10n;

  @override
  ConsumerState<_EditDeviceDialog> createState() => _EditDeviceDialogState();
}

class _EditDeviceDialogState extends ConsumerState<_EditDeviceDialog> {
  late final TextEditingController _assetTagCtl;
  late final Set<String> _selectedTags;

  @override
  void initState() {
    super.initState();
    _assetTagCtl = TextEditingController(text: widget.device.assetTag ?? '');
    _selectedTags = {...widget.device.tags};
  }

  @override
  void dispose() {
    _assetTagCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = widget.l10n;
    final theme = Theme.of(context);
    final availableTagsAsync = ref.watch(tagsProvider);

    return AlertDialog(
      title: Text(l10n.editDevice),
      content: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _assetTagCtl,
                decoration: InputDecoration(
                  labelText: l10n.assetTag,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                l10n.assignTags,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(height: 8),
              availableTagsAsync.when(
                data: (availableTags) {
                  if (availableTags.isEmpty) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        l10n.noTagsAvailableMessage,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    );
                  }
                  return Wrap(
                    spacing: 8,
                    runSpacing: 4,
                    children: availableTags.map((tag) {
                      final isSelected = _selectedTags.contains(tag.name);
                      return FilterChip(
                        label: Text(tag.name),
                        selected: isSelected,
                        onSelected: (selected) {
                          setState(() {
                            if (selected) {
                              _selectedTags.add(tag.name);
                            } else {
                              _selectedTags.remove(tag.name);
                            }
                          });
                        },
                      );
                    }).toList(),
                  );
                },
                loading: () => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),
                error: (_, _) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    l10n.failedToLoadTags,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.error,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.cancel),
        ),
        FilledButton(
          onPressed: () {
            final body = <String, dynamic>{};
            final newAssetTag = _assetTagCtl.text.trim();
            if (newAssetTag != (widget.device.assetTag ?? '')) {
              body['asset_tag'] = newAssetTag.isEmpty ? null : newAssetTag;
            }
            final newTags = _selectedTags.toList()..sort();
            final oldTags = [...widget.device.tags]..sort();
            if (newTags.join(',') != oldTags.join(',')) {
              body['tags'] = newTags;
            }
            if (body.isEmpty) {
              Navigator.of(context).pop();
              return;
            }
            Navigator.of(context).pop(body);
          },
          child: Text(l10n.save),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Erase Device Dialog (mobile — requires PIN and options)
// ---------------------------------------------------------------------------
class _EraseDeviceDialog extends StatefulWidget {
  const _EraseDeviceDialog({required this.l10n});

  final AppLocalizations l10n;

  @override
  State<_EraseDeviceDialog> createState() => _EraseDeviceDialogState();
}

class _EraseDeviceDialogState extends State<_EraseDeviceDialog> {
  final _pinCtl = TextEditingController();
  bool _preserveDataPlan = false;
  bool _disallowProximitySetup = false;
  bool _returnToService = false;

  @override
  void dispose() {
    _pinCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = widget.l10n;
    return AlertDialog(
      title: Text(l10n.actionErase),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _pinCtl,
              decoration: InputDecoration(
                labelText: l10n.erasePin,
                helperText: l10n.erasePinHint,
                border: const OutlineInputBorder(),
                counterText: '',
              ),
              keyboardType: TextInputType.number,
              maxLength: 6,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const SizedBox(height: 8),
            CheckboxListTile(
              title: Text(l10n.erasePreserveDataPlan),
              value: _preserveDataPlan,
              onChanged: (v) => setState(() => _preserveDataPlan = v ?? false),
              contentPadding: EdgeInsets.zero,
              dense: true,
            ),
            CheckboxListTile(
              title: Text(l10n.eraseDisallowProximitySetup),
              value: _disallowProximitySetup,
              onChanged: (v) =>
                  setState(() => _disallowProximitySetup = v ?? false),
              contentPadding: EdgeInsets.zero,
              dense: true,
            ),
            CheckboxListTile(
              title: Text(l10n.eraseReturnToService),
              value: _returnToService,
              onChanged: (v) => setState(() => _returnToService = v ?? false),
              contentPadding: EdgeInsets.zero,
              dense: true,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.cancel),
        ),
        FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
          onPressed: () {
            final pin = _pinCtl.text;
            if (pin.length != 6) return;
            Navigator.of(context).pop(<String, dynamic>{
              'PIN': pin,
              'PreserveDataPlan': _preserveDataPlan,
              'DisallowProximitySetup': _disallowProximitySetup,
              'ReturnToService': {'Enabled': _returnToService, 'ProfileId': ''},
            });
          },
          child: Text(l10n.actionErase),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Restart Dialog (Mac — RebuildKernelCache + NotifyUser)
// ---------------------------------------------------------------------------
class _RestartDialog extends StatefulWidget {
  const _RestartDialog({required this.l10n});

  final AppLocalizations l10n;

  @override
  State<_RestartDialog> createState() => _RestartDialogState();
}

class _RestartDialogState extends State<_RestartDialog> {
  bool _rebuildKernelCache = false;
  bool _notifyUser = false;

  @override
  Widget build(BuildContext context) {
    final l10n = widget.l10n;
    return AlertDialog(
      title: Text(l10n.actionRestart),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CheckboxListTile(
            title: Text(l10n.restartRebuildKernelCache),
            value: _rebuildKernelCache,
            onChanged: (v) => setState(() => _rebuildKernelCache = v ?? false),
            contentPadding: EdgeInsets.zero,
            dense: true,
          ),
          CheckboxListTile(
            title: Text(l10n.restartNotifyUser),
            value: _notifyUser,
            onChanged: (v) => setState(() => _notifyUser = v ?? false),
            contentPadding: EdgeInsets.zero,
            dense: true,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.cancel),
        ),
        FilledButton(
          onPressed: () {
            Navigator.of(context).pop(<String, dynamic>{
              'RebuildKernelCache': _rebuildKernelCache,
              'NotifyUser': _notifyUser,
            });
          },
          child: Text(l10n.confirm),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// Delete User Dialog (Mac — UserName, DeleteAllUsers, ForceDeletion)
// ---------------------------------------------------------------------------
class _DeleteUserDialog extends StatefulWidget {
  const _DeleteUserDialog({required this.l10n});

  final AppLocalizations l10n;

  @override
  State<_DeleteUserDialog> createState() => _DeleteUserDialogState();
}

class _DeleteUserDialogState extends State<_DeleteUserDialog> {
  final _userCtl = TextEditingController();
  bool _deleteAllUsers = false;
  bool _forceDeletion = false;

  @override
  void dispose() {
    _userCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = widget.l10n;
    return AlertDialog(
      title: Text(l10n.actionDeleteUser),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: _userCtl,
            decoration: InputDecoration(
              labelText: l10n.actionDeleteUserName,
              border: const OutlineInputBorder(),
            ),
            enabled: !_deleteAllUsers,
          ),
          const SizedBox(height: 8),
          CheckboxListTile(
            title: Text(l10n.actionDeleteAllUsers),
            value: _deleteAllUsers,
            onChanged: (v) => setState(() => _deleteAllUsers = v ?? false),
            contentPadding: EdgeInsets.zero,
            dense: true,
          ),
          CheckboxListTile(
            title: Text(l10n.actionForceDeletion),
            value: _forceDeletion,
            onChanged: (v) => setState(() => _forceDeletion = v ?? false),
            contentPadding: EdgeInsets.zero,
            dense: true,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.cancel),
        ),
        FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.error,
          ),
          onPressed: () {
            if (!_deleteAllUsers && _userCtl.text.trim().isEmpty) return;
            Navigator.of(context).pop(<String, dynamic>{
              'DeleteAllUsers': _deleteAllUsers,
              'ForceDeletion': _forceDeletion,
              if (!_deleteAllUsers) 'UserName': _userCtl.text.trim(),
            });
          },
          child: Text(l10n.confirm),
        ),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// TAB 1: Overview
// ---------------------------------------------------------------------------

class _OverviewTab extends ConsumerWidget {
  const _OverviewTab({required this.device});

  final Device device;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final detailsAsync = ref.watch(deviceDetailsProvider(device.deviceId));
    final isWide = MediaQuery.sizeOf(context).width >= 600;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Device header
        _SectionCard(
          children: [
            _DeviceHeader(device: device),
            const Divider(height: 24),
            _InfoTile(
              icon: Icons.tag,
              label: l10n.serialNumber,
              value: device.serialNumber,
            ),
            _InfoTile(
              icon: Icons.phone_android,
              label: l10n.model,
              value: device.model,
            ),
            _InfoTile(
              icon: Icons.system_update,
              label: l10n.osVersion,
              value: device.osVersion,
            ),
            _InfoTile(
              icon: Icons.sell_outlined,
              label: l10n.assetTag,
              value: device.assetTag,
            ),
          ],
        ),
        const SizedBox(height: 12),

        // Management card
        _SectionCard(
          children: [
            _SectionTitle(title: l10n.sectionManagement),
            _InfoTile(
              icon: Icons.layers_outlined,
              label: l10n.blueprint,
              value: device.blueprintName,
            ),
            _TappableInfoTile(
              icon: Icons.person_outline,
              label: l10n.assignedUser,
              value: device.user?.name ?? device.user?.email,
              onTap: device.user?.userId != null
                  ? () => context.push('/users/${device.user!.userId}')
                  : null,
            ),
            _InfoTile(
              icon: Icons.login,
              label: l10n.enrolledDate,
              value: _formatDate(device.firstEnrollment),
            ),
            _InfoTile(
              icon: Icons.schedule,
              label: l10n.lastCheckIn(
                _parseRelativeTime(device.lastCheckIn) ?? '-',
              ),
              value: _formatDate(device.lastCheckIn),
            ),
            _InfoTile(
              icon: Icons.verified_outlined,
              label: l10n.agent,
              value: device.agentVersion,
            ),
            if (device.tags.isNotEmpty) ...[
              const Divider(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.label_outline,
                      size: 20,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Wrap(
                        spacing: 6,
                        runSpacing: 4,
                        children: device.tags
                            .map(
                              (tag) => Chip(
                                label: Text(tag),
                                materialTapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap,
                                visualDensity: VisualDensity.compact,
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
        const SizedBox(height: 12),

        // Status indicators
        detailsAsync.whenOrNull(
              data: (details) {
                final lostMode = details.lostMode;
                final isLost = lostMode?.isEnabled ?? false;
                return _SectionCard(
                  children: [
                    _SectionTitle(title: l10n.sectionStatus),
                    _StatusRow(
                      label: l10n.statusMissing,
                      isActive: device.isMissing,
                    ),
                    _StatusRow(
                      label: l10n.statusRemoved,
                      isActive: device.isRemoved,
                    ),
                    _StatusRow(label: l10n.lostModeEnabled, isActive: isLost),
                    if (isLost && lostMode != null) ...[
                      const SizedBox(height: 4),
                      if (lostMode.lockScreenMessage != null)
                        _InfoTile(
                          icon: Icons.message_outlined,
                          label: l10n.lostModeMessage,
                          value: lostMode.lockScreenMessage,
                        ),
                      if (lostMode.lockScreenPhoneNumber != null)
                        _InfoTile(
                          icon: Icons.phone_outlined,
                          label: l10n.lostModePhone,
                          value: lostMode.lockScreenPhoneNumber,
                        ),
                      if (lostMode.enabledBy != null)
                        _InfoTile(
                          icon: Icons.person_outline,
                          label: l10n.lostModeEnabledBy,
                          value: lostMode.enabledBy,
                        ),
                      if (lostMode.enableStatusAt != null)
                        _InfoTile(
                          icon: Icons.schedule,
                          label: l10n.lostModeEnabledAt,
                          value: _formatDate(lostMode.enableStatusAt),
                        ),
                    ],
                  ],
                );
              },
            ) ??
            _SectionCard(
              children: [
                _SectionTitle(title: l10n.sectionStatus),
                _StatusRow(
                  label: l10n.statusMissing,
                  isActive: device.isMissing,
                ),
                _StatusRow(
                  label: l10n.statusRemoved,
                  isActive: device.isRemoved,
                ),
              ],
            ),
        const SizedBox(height: 12),

        // Extended details from /details endpoint
        detailsAsync.when(
          data: (details) {
            if (isWide) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: _HardwareCard(details: details, l10n: l10n),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _SecurityCard(details: details, l10n: l10n),
                  ),
                ],
              );
            }
            return Column(
              children: [
                _HardwareCard(details: details, l10n: l10n),
                const SizedBox(height: 12),
                _SecurityCard(details: details, l10n: l10n),
              ],
            );
          },
          loading: () => const Center(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: CircularProgressIndicator(),
            ),
          ),
          error: (_, _) => const SizedBox.shrink(),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  String? _formatDate(String? dateStr) {
    if (dateStr == null) return null;
    final parsed = DateTime.tryParse(dateStr);
    if (parsed == null) return dateStr;
    return '${parsed.year}-${parsed.month.toString().padLeft(2, '0')}-${parsed.day.toString().padLeft(2, '0')}';
  }

  String? _parseRelativeTime(String? dateStr) {
    if (dateStr == null) return null;
    return DateTime.tryParse(dateStr)?.relativeTime;
  }
}

class _HardwareCard extends StatelessWidget {
  const _HardwareCard({required this.details, required this.l10n});

  final DeviceDetails details;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final hw = details.hardware;
    final cell = details.cellular;
    final general = details.general;

    return _SectionCard(
      children: [
        _SectionTitle(title: l10n.hardware),
        _InfoTile(icon: Icons.devices, label: l10n.model, value: hw?.modelName),
        _InfoTile(
          icon: Icons.developer_board,
          label: l10n.identifier,
          value: hw?.modelIdentifier,
        ),
        _InfoTile(
          icon: Icons.memory,
          label: l10n.processor,
          value: hw?.resolvedProcessor,
        ),
        _InfoTile(
          icon: Icons.memory,
          label: l10n.totalRam,
          value: hw?.resolvedRam,
        ),
        _InfoTile(
          icon: Icons.storage,
          label: l10n.totalStorage,
          value: hw?.totalCapacity,
        ),
        _InfoTile(
          icon: Icons.sd_storage_outlined,
          label: l10n.availableStorage,
          value: hw?.availableCapacity,
        ),
        _InfoTile(
          icon: Icons.wifi,
          label: l10n.wifiMac,
          value: hw?.wifiMacAddress,
        ),
        _InfoTile(
          icon: Icons.fingerprint,
          label: l10n.hardwareUuid,
          value: hw?.hardwareUuid,
        ),
        _InfoTile(
          icon: Icons.build_outlined,
          label: l10n.osBuild,
          value: general?.osBuild,
        ),
        if (cell != null) ...[
          _InfoTile(
            icon: Icons.sim_card_outlined,
            label: l10n.imei,
            value: cell.imei,
          ),
        ],
      ],
    );
  }
}

class _SecurityCard extends StatelessWidget {
  const _SecurityCard({required this.details, required this.l10n});

  final DeviceDetails details;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final sec = details.security;
    if (sec == null) return const SizedBox.shrink();

    return _SectionCard(
      children: [
        _SectionTitle(title: l10n.security),
        _InfoTile(
          icon: Icons.lock,
          label: l10n.encryption,
          value: sec.encryptionStatus,
        ),
        _InfoTile(
          icon: Icons.shield_outlined,
          label: l10n.devicePosture,
          value: sec.devicePosture,
        ),
        _StatusRow(label: l10n.passcode, isActive: sec.hasPasscode == 1),
        _StatusRow(label: l10n.encryption, isActive: sec.isEncrypted == 1),
      ],
    );
  }
}

// ---------------------------------------------------------------------------
// TAB 2: Apps
// ---------------------------------------------------------------------------

class _AppsTab extends ConsumerWidget {
  const _AppsTab({required this.deviceId});

  final String deviceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final appsAsync = ref.watch(deviceAppsProvider(deviceId));
    final isWide = MediaQuery.sizeOf(context).width >= 600;

    return appsAsync.when(
      data: (apps) {
        if (apps.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.apps,
                  size: 48,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(height: 8),
                Text(l10n.noAppsFound, style: theme.textTheme.bodyLarge),
              ],
            ),
          );
        }

        final crossAxisCount = isWide ? 2 : 1;

        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.all(16),
              sliver: SliverToBoxAdapter(
                child: Text(
                  l10n.appCount(apps.length),
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisExtent: 92,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => _AppCard(app: apps[index]),
                  childCount: apps.length,
                ),
              ),
            ),
            const SliverPadding(padding: EdgeInsets.only(bottom: 16)),
          ],
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(deviceAppsProvider(deviceId)),
      ),
    );
  }
}

class _AppCard extends StatelessWidget {
  const _AppCard({required this.app});

  final DeviceApp app;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
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
                Icons.apps,
                size: 20,
                color: colorScheme.onSecondaryContainer,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    app.resolvedName,
                    style: theme.textTheme.titleSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (app.resolvedId != null)
                    Text(
                      app.resolvedId!,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  if (app.resolvedVersion != null)
                    Text(
                      'v${app.resolvedVersion!}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// TAB 3: Status (Library Items + Parameters)
// ---------------------------------------------------------------------------

class _StatusTab extends ConsumerWidget {
  const _StatusTab({required this.deviceId});

  final String deviceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final statusAsync = ref.watch(deviceStatusProvider(deviceId));
    final isWide = MediaQuery.sizeOf(context).width >= 600;

    return statusAsync.when(
      data: (status) {
        if (isWide) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _StatusList(
                  title: l10n.libraryItems,
                  items: status.libraryItems,
                  icon: Icons.inventory_2_outlined,
                ),
              ),
              Expanded(
                child: _StatusList(
                  title: l10n.parameters,
                  items: status.parameters,
                  icon: Icons.tune,
                ),
              ),
            ],
          );
        }

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _StatusListSection(
              title: l10n.libraryItems,
              items: status.libraryItems,
              icon: Icons.inventory_2_outlined,
            ),
            const SizedBox(height: 12),
            _StatusListSection(
              title: l10n.parameters,
              items: status.parameters,
              icon: Icons.tune,
            ),
            const SizedBox(height: 16),
          ],
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(deviceStatusProvider(deviceId)),
      ),
    );
  }
}

class _StatusList extends StatelessWidget {
  const _StatusList({
    required this.title,
    required this.items,
    required this.icon,
  });

  final String title;
  final List<StatusItem> items;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [_StatusListSection(title: title, items: items, icon: icon)],
    );
  }
}

class _StatusListSection extends StatelessWidget {
  const _StatusListSection({
    required this.title,
    required this.items,
    required this.icon,
  });

  final String title;
  final List<StatusItem> items;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (items.isEmpty) {
      return _SectionCard(
        children: [
          _SectionTitle(title: title),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'No items',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return _SectionCard(
      children: [
        _SectionTitle(title: '$title (${items.length})'),
        ...(List.of(items)..sort(
              (a, b) => (a.name ?? '').toLowerCase().compareTo(
                (b.name ?? '').toLowerCase(),
              ),
            ))
            .map((item) => _StatusItemTile(item: item, icon: icon)),
      ],
    );
  }
}

class _StatusItemTile extends StatelessWidget {
  const _StatusItemTile({required this.item, required this.icon});

  final StatusItem item;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    final statusColor = _statusColor(item.status, colorScheme);
    final statusIcon = _statusIcon(item.status);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(statusIcon, size: 18, color: statusColor),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              item.name ?? 'Unknown',
              style: theme.textTheme.bodySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: statusColor.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              item.status ?? '-',
              style: theme.textTheme.labelSmall?.copyWith(color: statusColor),
            ),
          ),
        ],
      ),
    );
  }

  Color _statusColor(String? status, ColorScheme cs) {
    final s = status?.toUpperCase() ?? '';
    if (s == 'PASS' || s == 'COMPLETED' || s.contains('SUCCESS')) {
      return cs.primary;
    }
    if (s == 'ERROR' || s == 'FAILED') {
      return cs.error;
    }
    if (s == 'WARNING' || s == 'REMEDIATED') {
      return Colors.orange;
    }
    return cs.onSurfaceVariant;
  }

  IconData _statusIcon(String? status) {
    final s = status?.toUpperCase() ?? '';
    if (s == 'PASS' || s == 'COMPLETED' || s.contains('SUCCESS')) {
      return Icons.check_circle_outline;
    }
    if (s == 'ERROR' || s == 'FAILED') {
      return Icons.error_outline;
    }
    if (s == 'WARNING' || s == 'REMEDIATED') {
      return Icons.warning_amber;
    }
    if (s.contains('PENDING') ||
        s.contains('INSTALLING') ||
        s.contains('DOWNLOADING')) {
      return Icons.hourglass_empty;
    }
    return Icons.help_outline;
  }
}

// ---------------------------------------------------------------------------
// TAB 4: Activity
// ---------------------------------------------------------------------------

class _ActivityTab extends ConsumerWidget {
  const _ActivityTab({required this.deviceId});

  final String deviceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final activityAsync = ref.watch(deviceActivityProvider(deviceId));

    return activityAsync.when(
      data: (activities) {
        if (activities.isEmpty) {
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
                Text(l10n.noActivityFound, style: theme.textTheme.bodyLarge),
              ],
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: () async =>
              ref.invalidate(deviceActivityProvider(deviceId)),
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: activities.length,
            itemBuilder: (context, index) =>
                _ActivityTile(activity: activities[index]),
          ),
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(deviceActivityProvider(deviceId)),
      ),
    );
  }
}

class _ActivityTile extends StatelessWidget {
  const _ActivityTile({required this.activity});

  final DeviceActivity activity;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final status = _deriveStatus(activity.actionType);
    final statusColor = _statusBadgeColor(status, colorScheme);
    final iconColor = _statusIconColor(status, colorScheme);

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
                  color: iconColor.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  _activityIcon(activity.actionType),
                  size: 20,
                  color: iconColor,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            _formatActionType(activity.actionType),
                            style: theme.textTheme.titleSmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: statusColor.withValues(alpha: 0.12),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Text(
                            status,
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: statusColor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (activity.details != null &&
                        activity.details!.isNotEmpty)
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          activity.details!,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    if (activity.createdAt != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 6),
                        child: Row(
                          children: [
                            Icon(
                              Icons.schedule,
                              size: 14,
                              color: colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              _formatTimestamp(activity.createdAt!),
                              style: theme.textTheme.labelSmall?.copyWith(
                                color: colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Derives a status label from the action type string.
  String _deriveStatus(String? type) {
    final t = type?.toLowerCase() ?? '';
    if (t.contains('fail') || t.contains('error')) return 'Failed';
    if (t.contains('success') || t.contains('completed')) return 'Success';
    if (t.contains('pending') || t.contains('queued')) return 'Pending';
    return 'Info';
  }

  /// Badge color mapped to status: Success=primary, Failed=error, Pending=tertiary.
  Color _statusBadgeColor(String status, ColorScheme cs) => switch (status) {
    'Success' => cs.primary,
    'Failed' => cs.error,
    'Pending' => cs.tertiary,
    _ => cs.onSurfaceVariant,
  };

  /// Icon circle color mapped to status.
  Color _statusIconColor(String status, ColorScheme cs) => switch (status) {
    'Success' => cs.primary,
    'Failed' => cs.error,
    'Pending' => cs.tertiary,
    _ => cs.tertiary,
  };

  String _formatTimestamp(String dateStr) {
    final parsed = DateTime.tryParse(dateStr);
    if (parsed == null) return dateStr;
    final local = parsed.toLocal();
    return '${local.year}-${local.month.toString().padLeft(2, '0')}-${local.day.toString().padLeft(2, '0')} '
        '${local.hour.toString().padLeft(2, '0')}:${local.minute.toString().padLeft(2, '0')}';
  }

  String _formatActionType(String? type) {
    if (type == null) return 'Unknown';
    // Convert snake_case to Title Case
    return type
        .split('_')
        .map((w) => w.isEmpty ? '' : '${w[0].toUpperCase()}${w.substring(1)}')
        .join(' ');
  }

  IconData _activityIcon(String? type) {
    final t = type?.toLowerCase() ?? '';
    if (t.contains('enrollment')) return Icons.login;
    if (t.contains('failed') || t.contains('error')) return Icons.error_outline;
    if (t.contains('completed') || t.contains('success')) {
      return Icons.check_circle_outline;
    }
    if (t.contains('command') || t.contains('mdm')) return Icons.terminal;
    if (t.contains('lock')) return Icons.lock_outline;
    if (t.contains('install')) return Icons.install_desktop;
    if (t.contains('update') || t.contains('sync')) return Icons.sync;
    if (t.contains('restart') || t.contains('shutdown')) {
      return Icons.restart_alt;
    }
    if (t.contains('erase') || t.contains('wipe') || t.contains('delete')) {
      return Icons.delete_forever;
    }
    if (t.contains('push') || t.contains('send')) return Icons.send_outlined;
    if (t.contains('checkin') || t.contains('check_in')) return Icons.today;
    return Icons.history;
  }
}

// ---------------------------------------------------------------------------
// TAB 5: Commands
// ---------------------------------------------------------------------------

class _CommandsTab extends ConsumerWidget {
  const _CommandsTab({required this.deviceId});

  final String deviceId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final commandsAsync = ref.watch(deviceCommandsProvider(deviceId));

    return commandsAsync.when(
      data: (commands) {
        if (commands.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.terminal,
                  size: 48,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(height: 8),
                Text(l10n.noCommandsFound, style: theme.textTheme.bodyLarge),
              ],
            ),
          );
        }

        return RefreshIndicator(
          onRefresh: () async =>
              ref.invalidate(deviceCommandsProvider(deviceId)),
          child: ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: commands.length,
            itemBuilder: (context, index) =>
                _CommandTile(command: commands[index]),
          ),
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(deviceCommandsProvider(deviceId)),
      ),
    );
  }
}

class _CommandTile extends StatelessWidget {
  const _CommandTile({required this.command});

  final DeviceCommand command;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final statusLabel = DeviceCommand.statusLabel(command.status);
    final statusColor = _commandStatusColor(command.status, colorScheme);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  _commandStatusIcon(command.status),
                  size: 18,
                  color: statusColor,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      command.requestType ?? command.commandType ?? 'Unknown',
                      style: theme.textTheme.titleSmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (command.dateRequested != null)
                      Text(
                        _formatDate(command.dateRequested!),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  statusLabel,
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

  Color _commandStatusColor(String? status, ColorScheme cs) => switch (status) {
    '3' => cs.primary,
    '4' => cs.error,
    '1' || '2' => Colors.orange,
    _ => cs.onSurfaceVariant,
  };

  IconData _commandStatusIcon(String? status) => switch (status) {
    '3' => Icons.check_circle_outline,
    '4' => Icons.error_outline,
    '1' => Icons.schedule,
    '2' => Icons.play_circle_outline,
    _ => Icons.help_outline,
  };

  String _formatDate(String dateStr) {
    final parsed = DateTime.tryParse(dateStr);
    if (parsed == null) return dateStr;
    return '${parsed.year}-${parsed.month.toString().padLeft(2, '0')}-${parsed.day.toString().padLeft(2, '0')} '
        '${parsed.hour.toString().padLeft(2, '0')}:${parsed.minute.toString().padLeft(2, '0')}';
  }
}

// ---------------------------------------------------------------------------
// TAB 6: Secrets
// ---------------------------------------------------------------------------

class _SecretsTab extends ConsumerStatefulWidget {
  const _SecretsTab({required this.deviceId});

  final String deviceId;

  @override
  ConsumerState<_SecretsTab> createState() => _SecretsTabState();
}

class _SecretsTabState extends ConsumerState<_SecretsTab> {
  bool _authenticated = false;

  bool get _securityConfigured => ref.read(pinEnabledProvider);

  bool get _biometricConfigured => ref.read(biometricEnabledProvider);

  Future<void> _authenticate() async {
    if (_biometricConfigured) {
      // Try biometric first
      final l10n = AppLocalizations.of(context);
      final bioService = BiometricService();
      final ok = await bioService.authenticate(
        reason: l10n.biometricReasonSecrets,
      );
      if (ok && mounted) {
        setState(() => _authenticated = true);
        return;
      }
    }

    // Fall back to PIN verification (or use PIN if biometric not configured)
    if (!mounted) return;
    final pin = await PinDialog.showVerifyPin(
      context,
      verifier: (pin) async =>
          ref.read(pinEnabledProvider.notifier).verifyPin(pin),
    );
    if (pin != null && mounted) {
      setState(() => _authenticated = true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    if (_securityConfigured && !_authenticated) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              _biometricConfigured ? Icons.fingerprint : Icons.lock_outline,
              size: 64,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(height: 16),
            Text(l10n.biometricReasonSecrets, style: theme.textTheme.bodyLarge),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: _authenticate,
              icon: const Icon(Icons.lock_open),
              label: Text(l10n.confirm),
            ),
          ],
        ),
      );
    }

    final secretsAsync = ref.watch(deviceSecretsProvider(widget.deviceId));

    return secretsAsync.when(
      data: (secrets) {
        final entries = <({String label, String? value})>[
          (label: l10n.filevaultKey, value: secrets.filevaultKey),
          (label: l10n.unlockPin, value: secrets.unlockPin),
          (label: l10n.recoveryPassword, value: secrets.recoveryPassword),
          (label: l10n.bypassCode, value: secrets.bypassCode),
        ];

        final available = entries
            .where((e) => e.value != null && e.value!.isNotEmpty)
            .toList();

        if (available.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.lock_outline,
                  size: 48,
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                const SizedBox(height: 8),
                Text(l10n.noSecretsFound, style: theme.textTheme.bodyLarge),
              ],
            ),
          );
        }

        return ListView(
          padding: const EdgeInsets.all(16),
          children: available
              .map(
                (entry) => _SecretCard(label: entry.label, value: entry.value!),
              )
              .toList(),
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(deviceSecretsProvider(widget.deviceId)),
      ),
    );
  }
}

class _SecretCard extends StatefulWidget {
  const _SecretCard({required this.label, required this.value});

  final String label;
  final String value;

  @override
  State<_SecretCard> createState() => _SecretCardState();
}

class _SecretCardState extends State<_SecretCard> {
  bool _revealed = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.key, size: 20, color: colorScheme.primary),
                  const SizedBox(width: 8),
                  Text(widget.label, style: theme.textTheme.titleSmall),
                  const Spacer(),
                  IconButton(
                    icon: Icon(
                      _revealed ? Icons.visibility_off : Icons.visibility,
                      size: 20,
                    ),
                    onPressed: () => setState(() => _revealed = !_revealed),
                    tooltip: l10n.aboutShowHide,
                  ),
                  IconButton(
                    icon: const Icon(Icons.copy, size: 20),
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: widget.value));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(l10n.secretCopied)),
                      );
                    },
                    tooltip: l10n.tapToCopy,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _revealed ? widget.value : '••••••••••••••••',
                  style: theme.textTheme.bodyLarge?.copyWith(
                    fontFamily: 'monospace',
                    letterSpacing: _revealed ? 1.5 : 3.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// Shared Widgets
// ---------------------------------------------------------------------------

class _SectionCard extends StatelessWidget {
  const _SectionCard({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: theme.textTheme.titleSmall?.copyWith(
          color: theme.colorScheme.primary,
        ),
      ),
    );
  }
}

class _DeviceHeader extends StatelessWidget {
  const _DeviceHeader({required this.device});

  final Device device;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Row(
      children: [
        Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16),
          ),
          child: PlatformIcon(platform: device.platform, size: 28),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                device.deviceName ?? AppLocalizations.of(context).unknownDevice,
                style: theme.textTheme.titleMedium,
              ),
              if (device.model != null)
                Text(
                  device.model!,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
              if (device.platform != null)
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.tertiaryContainer,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      device.platform!,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colorScheme.onTertiaryContainer,
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({required this.icon, required this.label, this.value});

  final IconData icon;
  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    if (value == null || value!.isEmpty) return const SizedBox.shrink();

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
                Text(value!, style: theme.textTheme.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TappableInfoTile extends StatelessWidget {
  const _TappableInfoTile({
    required this.icon,
    required this.label,
    this.value,
    this.onTap,
  });

  final IconData icon;
  final String label;
  final String? value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    if (value == null || value!.isEmpty) return const SizedBox.shrink();

    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
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
                  Text(
                    value!,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: onTap != null ? colorScheme.primary : null,
                      decoration: onTap != null
                          ? TextDecoration.underline
                          : null,
                    ),
                  ),
                ],
              ),
            ),
            if (onTap != null)
              Icon(
                Icons.chevron_right,
                size: 18,
                color: colorScheme.onSurfaceVariant,
              ),
          ],
        ),
      ),
    );
  }
}

class _StatusRow extends StatelessWidget {
  const _StatusRow({required this.label, required this.isActive});

  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(
            isActive ? Icons.warning_amber_rounded : Icons.check_circle_outline,
            size: 20,
            color: isActive ? colorScheme.error : colorScheme.primary,
          ),
          const SizedBox(width: 12),
          Text(label, style: theme.textTheme.bodyMedium),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            decoration: BoxDecoration(
              color: isActive
                  ? colorScheme.errorContainer
                  : colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              isActive ? 'Yes' : 'No',
              style: theme.textTheme.labelSmall?.copyWith(
                color: isActive
                    ? colorScheme.onErrorContainer
                    : colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ---------------------------------------------------------------------------
// TAB 7: Location (mobile devices only)
// ---------------------------------------------------------------------------
// TAB: Notes
// ---------------------------------------------------------------------------

class _NotesTab extends ConsumerStatefulWidget {
  const _NotesTab({required this.deviceId});

  final String deviceId;

  @override
  ConsumerState<_NotesTab> createState() => _NotesTabState();
}

class _NotesTabState extends ConsumerState<_NotesTab> {
  Future<void> _addNote() async {
    final l10n = AppLocalizations.of(context);
    final contentCtl = TextEditingController();
    final result = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.addNote),
        content: TextField(
          controller: contentCtl,
          decoration: InputDecoration(
            labelText: l10n.noteContent,
            border: const OutlineInputBorder(),
          ),
          maxLines: 5,
          minLines: 3,
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              if (contentCtl.text.trim().isEmpty) return;
              Navigator.of(ctx).pop(contentCtl.text.trim());
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
    if (result == null || !mounted) return;

    try {
      final repo = await ref.read(deviceRepositoryProvider.future);
      await repo.createDeviceNote(widget.deviceId, result);
      ref.invalidate(deviceNotesProvider(widget.deviceId));
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.noteSaved)));
      }
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
      }
    }
  }

  Future<void> _editNote(DeviceNote note) async {
    final l10n = AppLocalizations.of(context);
    final contentCtl = TextEditingController(text: note.content);
    final result = await showDialog<String>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.editNote),
        content: TextField(
          controller: contentCtl,
          decoration: InputDecoration(
            labelText: l10n.noteContent,
            border: const OutlineInputBorder(),
          ),
          maxLines: 5,
          minLines: 3,
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () {
              if (contentCtl.text.trim().isEmpty) return;
              Navigator.of(ctx).pop(contentCtl.text.trim());
            },
            child: Text(l10n.save),
          ),
        ],
      ),
    );
    if (result == null || !mounted) return;

    try {
      final repo = await ref.read(deviceRepositoryProvider.future);
      await repo.updateDeviceNote(widget.deviceId, note.noteId, result);
      ref.invalidate(deviceNotesProvider(widget.deviceId));
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.noteSaved)));
      }
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
      }
    }
  }

  Future<void> _deleteNote(DeviceNote note) async {
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.deleteNote),
        content: Text(l10n.deleteNoteConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),
            onPressed: () => Navigator.of(ctx).pop(true),
            child: Text(l10n.delete),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;

    try {
      final repo = await ref.read(deviceRepositoryProvider.future);
      await repo.deleteDeviceNote(widget.deviceId, note.noteId);
      ref.invalidate(deviceNotesProvider(widget.deviceId));
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.noteDeleted)));
      }
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionFailed)));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final notesAsync = ref.watch(deviceNotesProvider(widget.deviceId));

    return notesAsync.when(
      data: (notes) {
        return Scaffold(
          body: notes.isEmpty
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.note_outlined,
                        size: 48,
                        color: theme.colorScheme.onSurfaceVariant,
                      ),
                      const SizedBox(height: 8),
                      Text(l10n.noNotesFound, style: theme.textTheme.bodyLarge),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: notes.length,
                  itemBuilder: (context, index) {
                    final note = notes[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    note.createdAt != null
                                        ? _formatDateTime(note.createdAt!)
                                        : '',
                                    style: theme.textTheme.labelSmall?.copyWith(
                                      color: theme.colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                ),
                                PopupMenuButton<String>(
                                  iconSize: 20,
                                  padding: EdgeInsets.zero,
                                  onSelected: (value) {
                                    if (value == 'edit') {
                                      _editNote(note);
                                    } else if (value == 'delete') {
                                      _deleteNote(note);
                                    }
                                  },
                                  itemBuilder: (ctx) => [
                                    PopupMenuItem(
                                      value: 'edit',
                                      child: ListTile(
                                        leading: const Icon(
                                          Icons.edit_outlined,
                                        ),
                                        title: Text(l10n.editNote),
                                        contentPadding: EdgeInsets.zero,
                                        dense: true,
                                      ),
                                    ),
                                    PopupMenuItem(
                                      value: 'delete',
                                      child: ListTile(
                                        leading: Icon(
                                          Icons.delete_outline,
                                          color: theme.colorScheme.error,
                                        ),
                                        title: Text(
                                          l10n.deleteNote,
                                          style: TextStyle(
                                            color: theme.colorScheme.error,
                                          ),
                                        ),
                                        contentPadding: EdgeInsets.zero,
                                        dense: true,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              note.content,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: _addNote,
            tooltip: l10n.addNote,
            child: const Icon(Icons.add),
          ),
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(deviceNotesProvider(widget.deviceId)),
      ),
    );
  }

  String _formatDateTime(String dateStr) {
    final parsed = DateTime.tryParse(dateStr);
    if (parsed == null) return dateStr;
    final local = parsed.toLocal();
    return '${local.year}-${local.month.toString().padLeft(2, '0')}-${local.day.toString().padLeft(2, '0')} '
        '${local.hour.toString().padLeft(2, '0')}:${local.minute.toString().padLeft(2, '0')}';
  }
}

// ---------------------------------------------------------------------------
// TAB: Location
// ---------------------------------------------------------------------------

class _LocationTab extends ConsumerWidget {
  const _LocationTab({required this.deviceId});

  final String deviceId;

  Future<void> _updateLocation(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context);
    try {
      final useCase = await ref.read(executeDeviceActionUseCaseProvider.future);
      await useCase.call(deviceId, DeviceAction.updateLocation);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.actionSuccess)));
      }
      // Delayed re-fetch for location update
      Future.delayed(const Duration(seconds: 5), () {
        ref.invalidate(deviceDetailsProvider(deviceId));
      });
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('${l10n.actionFailed}: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final detailsAsync = ref.watch(deviceDetailsProvider(deviceId));

    return detailsAsync.when(
      data: (details) {
        final lostMode = details.lostMode;
        final lat = lostMode?.latitude;
        final lng = lostMode?.longitude;
        final hasLocation = lat != null && lng != null;
        final lostModeEnabled = lostMode?.isEnabled ?? false;

        if (!hasLocation) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.location_off,
                    size: 48,
                    color: colorScheme.onSurfaceVariant,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    l10n.locationNotAvailable,
                    style: theme.textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.enableLostModeHint,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }

        final position = LatLng(lat, lng);

        return Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: FlutterMap(
                    options: MapOptions(
                      initialCenter: position,
                      initialZoom: 15,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                        userAgentPackageName: 'de.kiefer_networks.fleetpilot',
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: position,
                            width: 40,
                            height: 40,
                            child: Icon(
                              Icons.location_on,
                              color: colorScheme.error,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Info bar below the map
                Card(
                  margin: const EdgeInsets.all(12),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 18,
                              color: colorScheme.primary,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                '${lat.toStringAsFixed(5)}, ${lng.toStringAsFixed(5)}',
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                        if (lostMode?.lastLocationAt != null) ...[
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 18,
                                color: colorScheme.onSurfaceVariant,
                              ),
                              const SizedBox(width: 8),
                              Text(
                                lostMode!.lastLocationAt!,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                          ),
                        ],
                        if (lostModeEnabled) ...[
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: colorScheme.errorContainer,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              l10n.lostModeEnabled,
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: colorScheme.onErrorContainer,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // FAB to update location — only active when Lost Mode is enabled
            if (lostModeEnabled)
              Positioned(
                right: 16,
                bottom: 100,
                child: FloatingActionButton(
                  heroTag: 'updateLocation',
                  onPressed: () => _updateLocation(context, ref),
                  tooltip: l10n.actionUpdateLocation,
                  child: const Icon(Icons.my_location),
                ),
              ),
          ],
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(deviceDetailsProvider(deviceId)),
      ),
    );
  }
}
