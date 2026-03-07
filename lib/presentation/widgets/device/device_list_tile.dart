import 'package:flutter/material.dart';

import '../../../core/extensions/datetime_extensions.dart';
import '../../../domain/entities/device.dart';
import 'platform_icon.dart';

/// M3 list tile for a device — uses Card container for clear visual separation.
class DeviceListTile extends StatelessWidget {
  const DeviceListTile({super.key, required this.device, required this.onTap});

  final Device device;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final lastCheckIn = _parseLastCheckIn();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
      child: Card(
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: PlatformIcon(platform: device.platform, size: 24),
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
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                if (device.lostModeStatus?.toUpperCase() == 'ENABLED') ...[
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.location_off,
                          size: 12,
                          color: Colors.orange.shade700,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          'Lost',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.orange.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
                if (device.generalStatus != null) ...[
                  const SizedBox(width: 8),
                  _ComplianceDot(status: device.generalStatus!),
                ],
                if (lastCheckIn != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      lastCheckIn,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ),
                const SizedBox(width: 4),
                Icon(
                  Icons.chevron_right,
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

class _ComplianceDot extends StatelessWidget {
  const _ComplianceDot({required this.status});

  final String status;

  @override
  Widget build(BuildContext context) {
    final s = status.toUpperCase();
    final Color color;
    if (s == 'PASS' || s.contains('SUCCESS')) {
      color = Colors.green;
    } else if (s == 'ERROR' || s == 'FAIL') {
      color = Theme.of(context).colorScheme.error;
    } else if (s == 'WARNING' || s == 'REMEDIATED') {
      color = Colors.orange;
    } else {
      color = Colors.grey;
    }

    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
