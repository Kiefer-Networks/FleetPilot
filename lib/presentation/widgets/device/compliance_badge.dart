import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

/// Status indicator chip for device compliance.
enum ComplianceStatus { pass, fail, pending }

class ComplianceBadge extends StatelessWidget {
  const ComplianceBadge({super.key, required this.status});

  final ComplianceStatus status;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    final (label, color) = switch (status) {
      ComplianceStatus.pass => (l10n.compliancePass, Colors.green),
      ComplianceStatus.fail => (l10n.complianceFail, theme.colorScheme.error),
      ComplianceStatus.pending => (l10n.compliancePending, Colors.orange),
    };

    return Chip(
      label: Text(
        label,
        style: theme.textTheme.labelSmall?.copyWith(color: color),
      ),
      side: BorderSide(color: color),
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
    );
  }
}
