import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fleetpilot/presentation/widgets/pin_num_pad.dart';

void main() {
  group('PinDotIndicator', () {
    Widget buildDotIndicator({
      int length = 0,
      int maxLength = 6,
      bool hasError = false,
    }) {
      return MaterialApp(
        home: Scaffold(
          body: PinDotIndicator(
            length: length,
            maxLength: maxLength,
            hasError: hasError,
          ),
        ),
      );
    }

    testWidgets('renders correct number of dots for maxLength', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildDotIndicator(maxLength: 6));

      final animatedContainers = tester.widgetList<AnimatedContainer>(
        find.byType(AnimatedContainer),
      );
      expect(animatedContainers.length, 6);
    });

    testWidgets('renders 4 dots when maxLength is 4', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildDotIndicator(maxLength: 4));

      final animatedContainers = tester.widgetList<AnimatedContainer>(
        find.byType(AnimatedContainer),
      );
      expect(animatedContainers.length, 4);
    });

    testWidgets('dots use primary color when filled without error', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildDotIndicator(length: 3, hasError: false));
      await tester.pump(const Duration(milliseconds: 200));

      final context = tester.element(find.byType(PinDotIndicator));
      final primary = Theme.of(context).colorScheme.primary;

      final containers = tester.widgetList<AnimatedContainer>(
        find.byType(AnimatedContainer),
      );
      final filledContainers = containers.take(3);
      for (final container in filledContainers) {
        final decoration = container.decoration as BoxDecoration;
        expect(decoration.color, primary);
      }
    });

    testWidgets('dots use error color when hasError is true', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildDotIndicator(length: 3, hasError: true));
      await tester.pump(const Duration(milliseconds: 200));

      final context = tester.element(find.byType(PinDotIndicator));
      final errorColor = Theme.of(context).colorScheme.error;

      final containers = tester.widgetList<AnimatedContainer>(
        find.byType(AnimatedContainer),
      );
      final filledContainers = containers.take(3);
      for (final container in filledContainers) {
        final decoration = container.decoration as BoxDecoration;
        expect(decoration.color, errorColor);
      }
    });

    testWidgets('unfilled dots are transparent', (WidgetTester tester) async {
      await tester.pumpWidget(buildDotIndicator(length: 2, maxLength: 6));
      await tester.pump(const Duration(milliseconds: 200));

      final containers = tester
          .widgetList<AnimatedContainer>(find.byType(AnimatedContainer))
          .toList();
      final unfilledContainers = containers.sublist(2);
      for (final container in unfilledContainers) {
        final decoration = container.decoration as BoxDecoration;
        expect(decoration.color, Colors.transparent);
      }
    });
  });

  group('PinNumPad', () {
    Widget buildNumPad({
      required ValueChanged<String> onDigit,
      required VoidCallback onBackspace,
    }) {
      return MaterialApp(
        home: Scaffold(
          body: PinNumPad(onDigit: onDigit, onBackspace: onBackspace),
        ),
      );
    }

    testWidgets('displays digits 0-9', (WidgetTester tester) async {
      await tester.pumpWidget(buildNumPad(onDigit: (_) {}, onBackspace: () {}));

      for (var i = 0; i <= 9; i++) {
        expect(find.text('$i'), findsOneWidget);
      }
    });

    testWidgets('displays backspace icon', (WidgetTester tester) async {
      await tester.pumpWidget(buildNumPad(onDigit: (_) {}, onBackspace: () {}));

      expect(find.byIcon(Icons.backspace_outlined), findsOneWidget);
    });

    testWidgets('tapping a digit calls onDigit with the correct value', (
      WidgetTester tester,
    ) async {
      String? tappedDigit;
      await tester.pumpWidget(
        buildNumPad(onDigit: (d) => tappedDigit = d, onBackspace: () {}),
      );

      await tester.tap(find.text('5'));
      expect(tappedDigit, '5');
    });

    testWidgets('tapping backspace calls onBackspace', (
      WidgetTester tester,
    ) async {
      var backspacePressed = false;
      await tester.pumpWidget(
        buildNumPad(
          onDigit: (_) {},
          onBackspace: () => backspacePressed = true,
        ),
      );

      await tester.tap(find.byIcon(Icons.backspace_outlined));
      expect(backspacePressed, isTrue);
    });

    testWidgets('tapping each digit 1-9 fires onDigit', (
      WidgetTester tester,
    ) async {
      final tapped = <String>[];
      await tester.pumpWidget(
        buildNumPad(onDigit: (d) => tapped.add(d), onBackspace: () {}),
      );

      for (var i = 1; i <= 9; i++) {
        await tester.tap(find.text('$i'));
      }
      expect(tapped, ['1', '2', '3', '4', '5', '6', '7', '8', '9']);
    });

    testWidgets('tapping 0 fires onDigit with "0"', (
      WidgetTester tester,
    ) async {
      String? value;
      await tester.pumpWidget(
        buildNumPad(onDigit: (d) => value = d, onBackspace: () {}),
      );

      await tester.tap(find.text('0'));
      expect(value, '0');
    });

    testWidgets('num pad buttons have circular shape', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildNumPad(onDigit: (_) {}, onBackspace: () {}));

      final materials = tester
          .widgetList<Material>(find.byType(Material))
          .where((m) {
            return m.shape is CircleBorder;
          });
      expect(materials.length, 11);
    });
  });
}
