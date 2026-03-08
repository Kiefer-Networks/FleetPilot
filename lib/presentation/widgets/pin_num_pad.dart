import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PinDotIndicator extends StatelessWidget {
  final int length;
  final int maxLength;
  final bool hasError;

  const PinDotIndicator({
    super.key,
    required this.length,
    this.maxLength = 6,
    this.hasError = false,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(maxLength, (i) {
        final filled = i < length;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          margin: const EdgeInsets.symmetric(horizontal: 8),
          width: 14,
          height: 14,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: filled
                ? (hasError ? colorScheme.error : colorScheme.primary)
                : Colors.transparent,
            border: Border.all(
              color: hasError
                  ? colorScheme.error
                  : (filled
                        ? colorScheme.primary
                        : colorScheme.onSurfaceVariant),
              width: 2,
            ),
          ),
        );
      }),
    );
  }
}

/// PIN numpad with external keyboard support for tablets.
///
/// Wraps a visual numpad with [KeyboardListener] so that external keyboard
/// digit keys (0-9) and backspace work on tablets with attached keyboards.
class PinNumPad extends StatefulWidget {
  final ValueChanged<String> onDigit;
  final VoidCallback onBackspace;

  const PinNumPad({
    super.key,
    required this.onDigit,
    required this.onBackspace,
  });

  @override
  State<PinNumPad> createState() => _PinNumPadState();
}

class _PinNumPadState extends State<PinNumPad> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    // Auto-focus for keyboard input
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _focusNode.requestFocus();
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _handleKeyEvent(KeyEvent event) {
    if (event is! KeyDownEvent && event is! KeyRepeatEvent) return;

    final key = event.logicalKey;

    // Digit keys (both main keyboard and numpad)
    if (key == LogicalKeyboardKey.digit0 ||
        key == LogicalKeyboardKey.numpad0) {
      widget.onDigit('0');
    } else if (key == LogicalKeyboardKey.digit1 ||
        key == LogicalKeyboardKey.numpad1) {
      widget.onDigit('1');
    } else if (key == LogicalKeyboardKey.digit2 ||
        key == LogicalKeyboardKey.numpad2) {
      widget.onDigit('2');
    } else if (key == LogicalKeyboardKey.digit3 ||
        key == LogicalKeyboardKey.numpad3) {
      widget.onDigit('3');
    } else if (key == LogicalKeyboardKey.digit4 ||
        key == LogicalKeyboardKey.numpad4) {
      widget.onDigit('4');
    } else if (key == LogicalKeyboardKey.digit5 ||
        key == LogicalKeyboardKey.numpad5) {
      widget.onDigit('5');
    } else if (key == LogicalKeyboardKey.digit6 ||
        key == LogicalKeyboardKey.numpad6) {
      widget.onDigit('6');
    } else if (key == LogicalKeyboardKey.digit7 ||
        key == LogicalKeyboardKey.numpad7) {
      widget.onDigit('7');
    } else if (key == LogicalKeyboardKey.digit8 ||
        key == LogicalKeyboardKey.numpad8) {
      widget.onDigit('8');
    } else if (key == LogicalKeyboardKey.digit9 ||
        key == LogicalKeyboardKey.numpad9) {
      widget.onDigit('9');
    } else if (key == LogicalKeyboardKey.backspace ||
        key == LogicalKeyboardKey.delete) {
      widget.onBackspace();
    }
  }

  @override
  Widget build(BuildContext context) {
    final rows = [
      ['1', '2', '3'],
      ['4', '5', '6'],
      ['7', '8', '9'],
      ['', '0', 'backspace'],
    ];

    return KeyboardListener(
      focusNode: _focusNode,
      onKeyEvent: _handleKeyEvent,
      child: GestureDetector(
        // Tap anywhere on the numpad to regain keyboard focus
        onTap: () => _focusNode.requestFocus(),
        behavior: HitTestBehavior.translucent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: rows.map((row) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: row.map((key) {
                  if (key == '') {
                    return const SizedBox(width: 96);
                  }
                  if (key == 'backspace') {
                    return _NumPadButton(
                      onPressed: widget.onBackspace,
                      child: const Icon(Icons.backspace_outlined),
                    );
                  }
                  return _NumPadButton(
                    onPressed: () {
                      HapticFeedback.lightImpact();
                      widget.onDigit(key);
                    },
                    child: Text(
                      key,
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  );
                }).toList(),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _NumPadButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;

  const _NumPadButton({required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: SizedBox(
        width: 72,
        height: 72,
        child: Material(
          color: colorScheme.surfaceContainerHigh,
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: onPressed,
            customBorder: const CircleBorder(),
            child: Center(child: child),
          ),
        ),
      ),
    );
  }
}
