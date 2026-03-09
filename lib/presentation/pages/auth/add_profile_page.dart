import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../core/constants/api_constants.dart';
import '../../../core/di/providers.dart';
import '../../../core/errors/failures.dart';
import '../../../core/extensions/string_extensions.dart';
import '../../../domain/entities/connection_profile.dart';
import '../../providers/profile_providers.dart';

/// Screen for adding a new MDM tenant connection profile.
class AddProfilePage extends ConsumerStatefulWidget {
  const AddProfilePage({super.key});

  @override
  ConsumerState<AddProfilePage> createState() => _AddProfilePageState();
}

class _AddProfilePageState extends ConsumerState<AddProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final _displayNameController = TextEditingController();
  final _subdomainController = TextEditingController();
  final _tokenController = TextEditingController();
  ApiRegion _region = ApiRegion.us;
  bool _isVerifying = false;
  String? _errorMessage;

  @override
  void dispose() {
    _displayNameController.dispose();
    _subdomainController.dispose();
    _tokenController.dispose();
    super.dispose();
  }

  Future<void> _verifyAndSave() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() {
      _isVerifying = true;
      _errorMessage = null;
    });

    final subdomain = _subdomainController.text.trim();
    final token = _tokenController.text.trim();
    final displayName = _displayNameController.text.trim();

    try {
      final verifyCredentials = ref.read(verifyCredentialsUseCaseProvider);
      await verifyCredentials(
        subdomain: subdomain,
        region: _region,
        token: token,
      );

      final profile = ConnectionProfile(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        displayName: displayName,
        subdomain: subdomain,
        region: _region,
      );

      await ref
          .read(profileActionsProvider.notifier)
          .saveProfile(profile: profile, token: token);

      if (mounted) {
        context.go('/auth/pin-setup');
      }
    } on Failure catch (e) {
      if (mounted) {
        final l10n = AppLocalizations.of(context);
        setState(() {
          _errorMessage = switch (e) {
            UnauthorizedFailure() => l10n.errorInvalidToken,
            ForbiddenFailure() => l10n.errorInsufficientPermissions,
            NetworkFailure() => l10n.errorNetworkUnreachable,
            _ => l10n.errorUnexpected,
          };
        });
      }
    } finally {
      if (mounted) {
        setState(() => _isVerifying = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final subdomain = _subdomainController.text.trim();

    return Scaffold(
      appBar: AppBar(title: Text(l10n.addProfile)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.devices, size: 64, color: theme.colorScheme.primary),
              const SizedBox(height: 16),
              Text(
                l10n.welcomeTitle,
                style: theme.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                l10n.welcomeSubtitle,
                style: theme.textTheme.bodyLarge?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),

              // Display Name
              TextFormField(
                controller: _displayNameController,
                decoration: InputDecoration(
                  labelText: l10n.displayName,
                  hintText: l10n.displayNameHint,
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.label_outline),
                ),
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return l10n.validationRequired;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Region
              Text(l10n.region, style: theme.textTheme.labelLarge),
              const SizedBox(height: 8),
              SegmentedButton<ApiRegion>(
                segments: [
                  ButtonSegment(
                    value: ApiRegion.us,
                    label: Text(l10n.regionUs),
                    icon: const Icon(Icons.public),
                  ),
                  ButtonSegment(
                    value: ApiRegion.eu,
                    label: Text(l10n.regionEu),
                    icon: const Icon(Icons.public),
                  ),
                ],
                selected: {_region},
                onSelectionChanged: (selected) {
                  setState(() => _region = selected.first);
                },
              ),
              const SizedBox(height: 16),

              // Subdomain
              TextFormField(
                controller: _subdomainController,
                decoration: InputDecoration(
                  labelText: l10n.subdomain,
                  hintText: l10n.subdomainHint,
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.dns_outlined),
                ),
                textInputAction: TextInputAction.next,
                onChanged: (_) => setState(() {}),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return l10n.validationRequired;
                  }
                  if (!value.trim().isValidSubdomain) {
                    return l10n.validationSubdomain;
                  }
                  return null;
                },
              ),
              if (subdomain.isNotEmpty) ...[
                const SizedBox(height: 8),
                Text(
                  l10n.urlPreview(
                    ApiConstants.urlPreview(
                      subdomain: subdomain,
                      region: _region,
                    ),
                  ),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontFamily: 'monospace',
                  ),
                ),
              ],
              const SizedBox(height: 16),

              // API Token
              TextFormField(
                controller: _tokenController,
                decoration: InputDecoration(
                  labelText: l10n.apiToken,
                  hintText: l10n.apiTokenHint,
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.key_outlined),
                ),
                obscureText: true,
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (_) => _verifyAndSave(),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return l10n.validationRequired;
                  }
                  if (!value.trim().isValidApiToken) {
                    return l10n.validationToken;
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),

              // Error message
              if (_errorMessage != null) ...[
                Card(
                  color: theme.colorScheme.errorContainer,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.error_outline,
                          color: theme.colorScheme.onErrorContainer,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            _errorMessage!,
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color: theme.colorScheme.onErrorContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],

              // Verify & Save button
              FilledButton.icon(
                onPressed: _isVerifying ? null : _verifyAndSave,
                icon: _isVerifying
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.check_circle_outline),
                label: Text(_isVerifying ? l10n.verifying : l10n.verifyAndSave),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
