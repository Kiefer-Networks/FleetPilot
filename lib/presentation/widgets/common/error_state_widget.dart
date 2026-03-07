import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../core/errors/failures.dart';

/// Displays a localized error message with a retry button.
class ErrorStateWidget extends StatelessWidget {
  const ErrorStateWidget({
    super.key,
    required this.failure,
    required this.onRetry,
  });

  /// The failure to display a localized message for.
  final Object failure;

  /// Callback when the user taps retry.
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.error_outline, size: 48, color: theme.colorScheme.error),
            const SizedBox(height: 16),
            Text(
              _localizedMessage(l10n),
              style: theme.textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            FilledButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: Text(l10n.retry),
            ),
          ],
        ),
      ),
    );
  }

  String _localizedMessage(AppLocalizations l10n) {
    return switch (failure) {
      UnauthorizedFailure() => l10n.errorInvalidToken,
      ForbiddenFailure() => l10n.errorInsufficientPermissions,
      NotFoundFailure() => l10n.errorNotFound,
      ValidationFailure() => l10n.errorValidation,
      RateLimitFailure() => l10n.errorRateLimit,
      ServerFailure() => l10n.errorServer,
      NetworkFailure() => l10n.errorNetworkUnreachable,
      CertificatePinningFailure() => l10n.errorNetworkUnreachable,
      _ => l10n.errorUnexpected,
    };
  }
}
