import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

import '../../../core/di/providers.dart';
import '../../providers/blueprint_providers.dart';
import '../../providers/tenant_providers.dart';

class AdeCreatePage extends ConsumerStatefulWidget {
  const AdeCreatePage({super.key});

  @override
  ConsumerState<AdeCreatePage> createState() => _AdeCreatePageState();
}

class _AdeCreatePageState extends ConsumerState<AdeCreatePage> {
  int _currentStep = 0;
  String? _publicKey;
  bool _loadingKey = false;
  String? _selectedFilePath;
  String? _selectedFileName;
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  String? _selectedBlueprintId;
  bool _creating = false;

  @override
  void dispose() {
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _loadPublicKey() async {
    setState(() => _loadingKey = true);
    try {
      final api = await ref.read(tenantApiProvider.future);
      final key = await api.getAdePublicKey();
      setState(() => _publicKey = key);
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context).actionFailed)),
        );
      }
    } finally {
      if (mounted) setState(() => _loadingKey = false);
    }
  }

  Future<void> _pickTokenFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      withData: false,
      withReadStream: false,
    );
    if (result != null && result.files.single.path != null) {
      setState(() {
        _selectedFilePath = result.files.single.path;
        _selectedFileName = result.files.single.name;
      });
    }
  }

  Future<void> _createIntegration() async {
    if (_selectedFilePath == null) return;
    setState(() => _creating = true);
    try {
      final api = await ref.read(tenantApiProvider.future);
      await api.createAdeIntegration(
        filePath: _selectedFilePath!,
        fileName: _selectedFileName ?? 'token.p7m',
        phone: _phoneController.text.isNotEmpty ? _phoneController.text : null,
        email: _emailController.text.isNotEmpty ? _emailController.text : null,
        blueprintId: _selectedBlueprintId,
      );
      ref.invalidate(adeIntegrationsProvider);
      if (mounted) {
        final l10n = AppLocalizations.of(context);
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.integrationCreated)));
        Navigator.of(context).pop();
      }
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context).actionFailed)),
        );
      }
    } finally {
      if (mounted) setState(() => _creating = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.createAdeIntegration)),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep == 0) {
            setState(() => _currentStep = 1);
          } else if (_currentStep == 1) {
            if (_selectedFilePath != null) {
              setState(() => _currentStep = 2);
            }
          } else if (_currentStep == 2) {
            _createIntegration();
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() => _currentStep -= 1);
          } else {
            Navigator.of(context).pop();
          }
        },
        onStepTapped: (step) {
          if (step <= _currentStep) {
            setState(() => _currentStep = step);
          }
        },
        controlsBuilder: (context, details) {
          final isLastStep = _currentStep == 2;
          return Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Row(
              children: [
                if (isLastStep)
                  FilledButton.icon(
                    onPressed: _selectedFilePath != null && !_creating
                        ? details.onStepContinue
                        : null,
                    icon: _creating
                        ? const SizedBox(
                            width: 16,
                            height: 16,
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Colors.white,
                            ),
                          )
                        : const Icon(Icons.cloud_upload_outlined),
                    label: Text(l10n.create),
                  )
                else
                  FilledButton(
                    onPressed: _currentStep == 1 && _selectedFilePath == null
                        ? null
                        : details.onStepContinue,
                    child: Text(l10n.securityNext),
                  ),
                const SizedBox(width: 8),
                TextButton(
                  onPressed: details.onStepCancel,
                  child: Text(l10n.cancel),
                ),
              ],
            ),
          );
        },
        steps: [
          // Step 1: Public Key
          Step(
            title: Text(l10n.step1GetPublicKey),
            subtitle: Text(l10n.step1Description),
            isActive: _currentStep >= 0,
            state: _currentStep > 0 ? StepState.complete : StepState.indexed,
            content: _buildPublicKeyStep(l10n, theme, colorScheme),
          ),
          // Step 2: Upload Token
          Step(
            title: Text(l10n.step2UploadToken),
            subtitle: Text(l10n.step2Description),
            isActive: _currentStep >= 1,
            state: _currentStep > 1
                ? StepState.complete
                : _currentStep == 1
                ? StepState.indexed
                : StepState.disabled,
            content: _buildTokenUploadStep(l10n, theme, colorScheme),
          ),
          // Step 3: Configure
          Step(
            title: Text(l10n.step3Configure),
            isActive: _currentStep >= 2,
            state: _currentStep == 2 ? StepState.indexed : StepState.disabled,
            content: _buildConfigureStep(l10n, theme, colorScheme),
          ),
        ],
      ),
    );
  }

  Widget _buildPublicKeyStep(
    AppLocalizations l10n,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_publicKey == null)
          FilledButton.tonalIcon(
            onPressed: _loadingKey ? null : _loadPublicKey,
            icon: _loadingKey
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.key),
            label: Text(l10n.publicKey),
          )
        else ...[
          Card(
            color: colorScheme.surfaceContainerHighest,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: SelectableText(
                _publicKey!,
                style: theme.textTheme.bodySmall?.copyWith(
                  fontFamily: 'monospace',
                  fontSize: 11,
                ),
                maxLines: 8,
              ),
            ),
          ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: _publicKey!));
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(l10n.publicKeyCopied)));
            },
            icon: const Icon(Icons.copy, size: 18),
            label: Text(l10n.tapToCopy),
          ),
        ],
      ],
    );
  }

  Widget _buildTokenUploadStep(
    AppLocalizations l10n,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (_selectedFileName != null) ...[
          Card(
            color: colorScheme.primaryContainer,
            child: ListTile(
              leading: Icon(
                Icons.insert_drive_file,
                color: colorScheme.onPrimaryContainer,
              ),
              title: Text(
                _selectedFileName!,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onPrimaryContainer,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: IconButton(
                icon: Icon(Icons.close, color: colorScheme.onPrimaryContainer),
                onPressed: () => setState(() {
                  _selectedFilePath = null;
                  _selectedFileName = null;
                }),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
        FilledButton.tonalIcon(
          onPressed: _pickTokenFile,
          icon: const Icon(Icons.file_open_outlined),
          label: Text(l10n.selectTokenFile),
        ),
      ],
    );
  }

  Widget _buildConfigureStep(
    AppLocalizations l10n,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    final blueprintsAsync = ref.watch(blueprintsProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _phoneController,
          decoration: InputDecoration(
            labelText: l10n.phone,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.phone_outlined),
          ),
          keyboardType: TextInputType.phone,
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: l10n.email,
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.email_outlined),
          ),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        blueprintsAsync.when(
          data: (blueprints) => DropdownButtonFormField<String>(
            initialValue: blueprints.any((bp) => bp.id == _selectedBlueprintId)
                ? _selectedBlueprintId
                : null,
            decoration: InputDecoration(
              labelText: l10n.defaultBlueprint,
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(Icons.dashboard_outlined),
            ),
            isExpanded: true,
            items: blueprints
                .map(
                  (bp) => DropdownMenuItem(
                    value: bp.id,
                    child: Text(bp.name, overflow: TextOverflow.ellipsis),
                  ),
                )
                .toList(),
            onChanged: (value) => setState(() => _selectedBlueprintId = value),
          ),
          loading: () => const LinearProgressIndicator(),
          error: (_, _) => TextField(
            decoration: InputDecoration(
              labelText: l10n.defaultBlueprintId,
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(Icons.dashboard_outlined),
            ),
            onChanged: (v) => _selectedBlueprintId = v,
          ),
        ),
      ],
    );
  }
}
