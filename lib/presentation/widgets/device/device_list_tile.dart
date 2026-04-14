import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/extensions/datetime_extensions.dart';
import '../../../domain/entities/device.dart';
import 'platform_icon.dart';

class DeviceListTile extends StatelessWidget {
  const DeviceListTile({
    super.key,
    required this.device,
    required this.onTap,
    this.onLongPress,
    this.isSelectionMode = false,
    this.isSelected = false,
    this.onSelectionToggle,
  });

  final Device device;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;
  final bool isSelectionMode;
  final bool isSelected;
  final VoidCallback? onSelectionToggle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final brightness = theme.brightness;
    final lastCheckIn = _parseLastCheckIn();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
      child: Card(
        color: isSelected ? colorScheme.primaryContainer : null,
        child: InkWell(
          onTap: isSelectionMode ? onSelectionToggle : onTap,
          onLongPress: onLongPress,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                if (isSelectionMode) ...[
                  Checkbox(
                    value: isSelected,
                    onChanged: (_) => onSelectionToggle?.call(),
                  ),
                  const SizedBox(width: 4),
                ],
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHigh,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: PlatformIcon(platform: device.platform, size: 22),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        device.deviceName ??
                            device.serialNumber ??
                            'Unknown Device',
                        style: theme.textTheme.titleSmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        _buildSubtitle(),
                        style: theme.textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                if (device.lostModeStatus?.toUpperCase() == 'ENABLED') ...[
                  const SizedBox(width: 8),
                  _StatusBadge(
                    icon: Icons.location_off_rounded,
                    label: 'Lost',
                    color: AppColors.warning(brightness),
                    backgroundColor: AppColors.warningContainer(brightness),
                  ),
                ],
                if (device.generalStatus != null) ...[
                  const SizedBox(width: 8),
                  _ComplianceIndicator(
                    status: device.generalStatus!,
                    brightness: brightness,
                  ),
                ],
                if (lastCheckIn != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(lastCheckIn, style: theme.textTheme.labelSmall),
                  ),
                const SizedBox(width: 4),
                Icon(
                  Icons.chevron_right_rounded,
                  color: colorScheme.onSurfaceVariant,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _buildSubtitle() {
    final parts = <String>[];
    if (device.serialNumber != null) parts.add(device.serialNumber!);
    if (device.model != null) parts.add(device.model!);
    if (device.user?.name != null) parts.add(device.user!.name!);
    return parts.join(' \u00B7 ');
  }

  String? _parseLastCheckIn() {
    if (device.lastCheckIn == null) return null;
    final parsed = DateTime.tryParse(device.lastCheckIn!);
    return parsed?.relativeTime;
  }
}

/// Themed status badge with icon and label.
class _StatusBadge extends StatelessWidget {
  const _StatusBadge({
    required this.icon,
    required this.label,
    required this.color,
    required this.backgroundColor,
  });

  final IconData icon;
  final String label;
  final Color color;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: label,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 12, color: color),
            const SizedBox(width: 3),
            Text(
              label,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// Accessible compliance indicator — icon + color (not color-only).
class _ComplianceIndicator extends StatelessWidget {
  const _ComplianceIndicator({required this.status, required this.brightness});

  final String status;
  final Brightness brightness;

  @override
  Widget build(BuildContext context) {
    final s = status.toUpperCase();
    final Color color;
    final IconData icon;
    final String semanticLabel;

    if (s == 'PASS' || s.contains('SUCCESS')) {
      color = AppColors.success(brightness);
      icon = Icons.check_circle_rounded;
      semanticLabel = 'Compliant';
    } else if (s == 'ERROR' || s == 'FAIL') {
      color = Theme.of(context).colorScheme.error;
      icon = Icons.cancel_rounded;
      semanticLabel = 'Non-compliant';
    } else if (s == 'WARNING' || s == 'REMEDIATED') {
      color = AppColors.warning(brightness);
      icon = Icons.warning_rounded;
      semanticLabel = 'Warning';
    } else {
      color = AppColors.neutral(brightness);
      icon = Icons.remove_circle_outlined;
      semanticLabel = 'Unknown';
    }

    return Semantics(
      label: semanticLabel,
      child: Icon(icon, size: 18, color: color),
    );
  }
}
