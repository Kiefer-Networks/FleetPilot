import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../core/di/providers.dart';
import '../../../domain/entities/device.dart';
import '../../../domain/entities/mdm_user.dart';
import '../../providers/user_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';
import '../../widgets/device/device_list_tile.dart';

/// User detail screen showing user info and assigned devices.
class UserDetailPage extends ConsumerWidget {
  const UserDetailPage({super.key, required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsync = ref.watch(userDetailProvider(userId));

    return userAsync.when(
      data: (user) => _UserDetailScaffold(user: user),
      loading: () => Scaffold(appBar: AppBar(), body: const LoadingWidget()),
      error: (error, _) => Scaffold(
        appBar: AppBar(),
        body: ErrorStateWidget(
          failure: error,
          onRetry: () => ref.invalidate(userDetailProvider(userId)),
        ),
      ),
    );
  }
}

class _UserDetailScaffold extends ConsumerWidget {
  const _UserDetailScaffold({required this.user});

  final MdmUser user;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final userDevicesAsync = ref.watch(userDevicesProvider(user.id));

    final name = user.name ?? user.email ?? user.id;
    final initials = _getInitials(name);

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(name),
            floating: true,
            snap: true,
            actions: [
              IconButton(
                icon: Icon(Icons.delete_outline, color: colorScheme.error),
                tooltip: l10n.deleteUser,
                onPressed: () => _deleteUser(context, ref),
              ),
            ],
          ),
        ],
        body: RefreshIndicator(
          onRefresh: () async {
            ref.invalidate(userDetailProvider(user.id));
            ref.invalidate(userDevicesProvider(user.id));
          },
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // User header card
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 36,
                        backgroundColor: colorScheme.secondaryContainer,
                        child: Text(
                          initials,
                          style: theme.textTheme.headlineSmall?.copyWith(
                            color: colorScheme.onSecondaryContainer,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(name, style: theme.textTheme.titleLarge),
                      if (user.email != null) ...[
                        const SizedBox(height: 4),
                        Text(
                          user.email!,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                      if (user.archived) ...[
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
                            l10n.archived,
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
              const SizedBox(height: 12),

              // User info card
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.userInfo,
                        style: theme.textTheme.titleSmall?.copyWith(
                          color: colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _InfoRow(
                        icon: Icons.email_outlined,
                        label: l10n.email,
                        value: user.email,
                      ),
                      _InfoRow(
                        icon: Icons.badge_outlined,
                        label: l10n.jobTitle,
                        value: user.jobTitle,
                      ),
                      _InfoRow(
                        icon: Icons.business_outlined,
                        label: l10n.department,
                        value: user.department,
                      ),
                      _InfoRow(
                        icon: Icons.devices,
                        label: l10n.assignedDevices,
                        value: '${user.deviceCount}',
                      ),
                      _InfoRow(
                        icon: Icons.calendar_today_outlined,
                        label: l10n.createdAt,
                        value: _formatDate(user.createdAt),
                      ),
                      _InfoRow(
                        icon: Icons.update,
                        label: l10n.updatedAt,
                        value: _formatDate(user.updatedAt),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Assigned devices section
              Text(
                l10n.assignedDevices,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: colorScheme.primary,
                ),
              ),
              const SizedBox(height: 8),
              userDevicesAsync.when(
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
                                l10n.noAssignedDevices,
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
                        .map((device) => _DeviceCard(device: device))
                        .toList(),
                  );
                },
                loading: () => const Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(child: CircularProgressIndicator()),
                ),
                error: (_, _) => const SizedBox.shrink(),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _deleteUser(BuildContext context, WidgetRef ref) async {
    final l10n = AppLocalizations.of(context);
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.deleteUser),
        content: Text(l10n.deleteUserConfirm),
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
    if (confirmed != true || !context.mounted) return;

    try {
      final repo = await ref.read(userRepositoryProvider.future);
      await repo.deleteUser(user.id);
      ref.invalidate(usersProvider);
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.userDeleted)));
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

  String _getInitials(String name) {
    final parts = name.trim().split(RegExp(r'\s+'));
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return name.isNotEmpty ? name[0].toUpperCase() : '?';
  }

  String? _formatDate(String? dateStr) {
    if (dateStr == null) return null;
    final parsed = DateTime.tryParse(dateStr);
    if (parsed == null) return dateStr;
    return '${parsed.year}-${parsed.month.toString().padLeft(2, '0')}-${parsed.day.toString().padLeft(2, '0')}';
  }
}

class _DeviceCard extends StatelessWidget {
  const _DeviceCard({required this.device});

  final Device device;

  @override
  Widget build(BuildContext context) {
    return DeviceListTile(
      device: device,
      onTap: () => context.push('/devices/${device.deviceId}'),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.icon, required this.label, this.value});

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
