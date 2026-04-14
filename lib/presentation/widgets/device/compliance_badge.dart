import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../core/constants/app_colors.dart';

/// Status indicator chip for device compliance.
enum ComplianceStatus { pass, fail, pending }

class ComplianceBadge extends StatelessWidget {
  const ComplianceBadge({super.key, required this.status});

  final ComplianceStatus status;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final brightness = theme.brightness;

    final (label, color, bgColor, icon) = switch (status) {
      ComplianceStatus.pass => (
        l10n.compliancePass,
        AppColors.success(brightness),
        AppColors.successContainer(brightness),
        Icons.check_circle_rounded,
      ),
      ComplianceStatus.fail => (
        l10n.complianceFail,
        theme.colorScheme.error,
        theme.colorScheme.errorContainer,
        Icons.cancel_rounded,
      ),
      ComplianceStatus.pending => (
        l10n.compliancePending,
        AppColors.warning(brightness),
        AppColors.warningContainer(brightness),
        Icons.warning_rounded,
      ),
    };

    return Semantics(
      label: label,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 14, color: color),
            const SizedBox(width: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
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
