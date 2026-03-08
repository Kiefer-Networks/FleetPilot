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

/// Screen for editing an existing MDM tenant connection profile.
class EditProfilePage extends ConsumerStatefulWidget {
  const EditProfilePage({super.key, required this.profileId});

  final String profileId;

  @override
  ConsumerState<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends ConsumerState<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  final _displayNameController = TextEditingController();
  final _subdomainController = TextEditingController();
  final _tokenController = TextEditingController();
  ApiRegion _region = ApiRegion.us;
  bool _isVerifying = false;
  bool _isLoading = true;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _loadProfile();
  }

  Future<void> _loadProfile() async {
    final repo = ref.read(profileRepositoryProvider);
    final profile = await repo.getProfile(widget.profileId);

    if (!mounted) return;

    if (profile == null) {
      context.pop();
      return;
    }

    setState(() {
      _displayNameController.text = profile.displayName;
      _subdomainController.text = profile.subdomain;
      _region = profile.region;
      _isLoading = false;
    });
  }

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
      // If a new token was provided, verify it. Otherwise, verify with
      // the existing stored token to ensure the connection still works.
      final tokenToVerify = token.isNotEmpty
          ? token
          : await ref
                .read(profileRepositoryProvider)
                .getToken(widget.profileId);

      if (tokenToVerify == null || tokenToVerify.isEmpty) {
        if (!mounted) return;
        final l10n = AppLocalizations.of(context);
        setState(() {
          _errorMessage = l10n.validationRequired;
          _isVerifying = false;
        });
        return;
      }

      final verifyCredentials = ref.read(verifyCredentialsUseCaseProvider);
      await verifyCredentials(
        subdomain: subdomain,
        region: _region,
        token: tokenToVerify,
      );

      final updatedProfile = ConnectionProfile(
        id: widget.profileId,
        displayName: displayName,
        subdomain: subdomain,
        region: _region,
      );

      await ref
          .read(profileActionsProvider.notifier)
          .updateProfile(
            profile: updatedProfile,
            token: token.isNotEmpty ? token : null,
          );

      if (mounted) {
        final l10n = AppLocalizations.of(context);
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.profileUpdated)));
        context.pop();
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

    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(title: Text(l10n.editProfile)),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    final subdomain = _subdomainController.text.trim();

    return Scaffold(
      appBar: AppBar(title: Text(l10n.editProfile)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(Icons.edit, size: 64, color: theme.colorScheme.primary),
              const SizedBox(height: 16),
              Text(
                l10n.editProfileTitle,
                style: theme.textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                l10n.editProfileSubtitle,
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

              // API Token (optional — leave empty to keep existing)
              TextFormField(
                controller: _tokenController,
                decoration: InputDecoration(
                  labelText: l10n.apiToken,
                  hintText: l10n.apiTokenHintEdit,
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.key_outlined),
                ),
                obscureText: true,
                textInputAction: TextInputAction.done,
                onFieldSubmitted: (_) => _verifyAndSave(),
                // Token is optional on edit — empty means keep existing
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
