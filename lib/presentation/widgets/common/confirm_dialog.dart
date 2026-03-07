import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';

/// Shows a destructive action confirmation dialog requiring the user
/// to type the device name before confirming.
///
/// Returns `true` if the user confirmed, `false` or `null` if cancelled.
Future<bool?> showDestructiveConfirmDialog({
  required BuildContext context,
  required String deviceName,
}) {
  return showDialog<bool>(
    context: context,
    barrierDismissible: false,
    builder: (context) => _DestructiveConfirmDialog(deviceName: deviceName),
  );
}

class _DestructiveConfirmDialog extends StatefulWidget {
  const _DestructiveConfirmDialog({required this.deviceName});

  final String deviceName;

  @override
  State<_DestructiveConfirmDialog> createState() =>
      _DestructiveConfirmDialogState();
}

class _DestructiveConfirmDialogState extends State<_DestructiveConfirmDialog> {
  final _controller = TextEditingController();
  bool _isMatch = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final match = _controller.text.trim() == widget.deviceName;
      if (match != _isMatch) {
        setState(() => _isMatch = match);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return AlertDialog(
      icon: Icon(
        Icons.warning_amber_rounded,
        color: theme.colorScheme.error,
        size: 32,
      ),
      title: Text(l10n.destructiveActionTitle),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l10n.destructiveActionMessage(widget.deviceName)),
          const SizedBox(height: 16),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              hintText: l10n.destructiveActionHint,
              border: const OutlineInputBorder(),
            ),
            autofocus: true,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(l10n.cancel),
        ),
        FilledButton(
          onPressed: _isMatch ? () => Navigator.of(context).pop(true) : null,
          style: FilledButton.styleFrom(
            backgroundColor: theme.colorScheme.error,
            foregroundColor: theme.colorScheme.onError,
          ),
          child: Text(l10n.confirm),
        ),
      ],
    );
  }
}
