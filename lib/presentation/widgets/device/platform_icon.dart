import 'package:flutter/material.dart';

/// Displays the appropriate Material icon for a device platform.
class PlatformIcon extends StatelessWidget {
  const PlatformIcon({super.key, required this.platform, this.size = 24});

  /// The platform string from the API (Mac, iPhone, iPad, AppleTV).
  final String? platform;

  /// Icon size.
  final double size;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Icon(
      _iconForPlatform(platform),
      size: size,
      color: theme.colorScheme.onSurfaceVariant,
    );
  }

  static IconData _iconForPlatform(String? platform) {
    return switch (platform?.toLowerCase()) {
      'mac' => Icons.laptop_mac,
      'iphone' => Icons.phone_iphone,
      'ipad' => Icons.tablet_mac,
      'appletv' => Icons.tv,
      _ => Icons.devices_other,
    };
  }
}
