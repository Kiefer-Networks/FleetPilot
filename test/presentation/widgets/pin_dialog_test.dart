import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:fleetpilot/presentation/widgets/pin_dialog.dart';
import 'package:fleetpilot/presentation/widgets/pin_num_pad.dart';

void main() {
  Widget buildApp({required Widget child}) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
      home: child,
    );
  }

  Future<void> enterPin(WidgetTester tester, String pin) async {
    for (final digit in pin.split('')) {
      await tester.tap(find.text(digit));
      await tester.pump();
    }
  }

  group('PinDialog (set mode without confirm)', () {
    testWidgets('displays title from constructor', (WidgetTester tester) async {
      await tester.pumpWidget(
        buildApp(child: const PinDialog(title: 'Enter PIN', confirm: false)),
      );
      await tester.pumpAndSettle();

      expect(find.text('Enter PIN'), findsOneWidget);
    });

    testWidgets('displays subtitle when provided', (WidgetTester tester) async {
      await tester.pumpWidget(
        buildApp(
          child: const PinDialog(
            title: 'Set PIN',
            subtitle: 'Choose a 6-digit PIN',
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('Choose a 6-digit PIN'), findsOneWidget);
    });

    testWidgets('contains PinDotIndicator and PinNumPad', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildApp(child: const PinDialog(title: 'Test')));
      await tester.pumpAndSettle();

      expect(find.byType(PinDotIndicator), findsOneWidget);
      expect(find.byType(PinNumPad), findsOneWidget);
    });

    testWidgets('has a close button in AppBar', (WidgetTester tester) async {
      await tester.pumpWidget(buildApp(child: const PinDialog(title: 'Test')));
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.close), findsOneWidget);
    });
  });

  group('PinDialog (set mode with confirm)', () {
    testWidgets('shows confirm title after entering first PIN', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildApp(
          child: const PinDialog(
            title: 'Set PIN',
            subtitle: 'Description',
            confirm: true,
          ),
        ),
      );
      await tester.pumpAndSettle();

      await enterPin(tester, '123456');
      await tester.pumpAndSettle();

      expect(find.text('Enter the PIN again to confirm.'), findsOneWidget);
    });

    testWidgets('hides subtitle during confirm phase', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildApp(
          child: const PinDialog(
            title: 'Set PIN',
            subtitle: 'Description text',
            confirm: true,
          ),
        ),
      );
      await tester.pumpAndSettle();

      await enterPin(tester, '123456');
      await tester.pumpAndSettle();

      expect(find.text('Description text'), findsNothing);
    });

    testWidgets('shows error when PINs do not match', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildApp(child: const PinDialog(title: 'Set PIN', confirm: true)),
      );
      await tester.pumpAndSettle();

      await enterPin(tester, '123456');
      await tester.pumpAndSettle();

      await enterPin(tester, '654321');
      await tester.pumpAndSettle();

      expect(find.text('PINs do not match.'), findsOneWidget);
    });
  });

  group('PinDialog digit input', () {
    testWidgets('dots fill as digits are entered', (WidgetTester tester) async {
      await tester.pumpWidget(
        buildApp(child: const PinDialog(title: 'Test', confirm: false)),
      );
      await tester.pumpAndSettle();

      final indicatorBefore = tester.widget<PinDotIndicator>(
        find.byType(PinDotIndicator),
      );
      expect(indicatorBefore.length, 0);

      await tester.tap(find.text('1'));
      await tester.pump();
      await tester.tap(find.text('2'));
      await tester.pump();
      await tester.tap(find.text('3'));
      await tester.pump();

      final indicatorAfter = tester.widget<PinDotIndicator>(
        find.byType(PinDotIndicator),
      );
      expect(indicatorAfter.length, 3);
    });

    testWidgets('backspace removes last digit', (WidgetTester tester) async {
      await tester.pumpWidget(
        buildApp(child: const PinDialog(title: 'Test', confirm: false)),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('1'));
      await tester.pump();
      await tester.tap(find.text('2'));
      await tester.pump();

      var indicator = tester.widget<PinDotIndicator>(
        find.byType(PinDotIndicator),
      );
      expect(indicator.length, 2);

      await tester.tap(find.byIcon(Icons.backspace_outlined));
      await tester.pump();

      indicator = tester.widget<PinDotIndicator>(find.byType(PinDotIndicator));
      expect(indicator.length, 1);
    });

    testWidgets('backspace on empty pin does nothing', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildApp(child: const PinDialog(title: 'Test', confirm: false)),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.byIcon(Icons.backspace_outlined));
      await tester.pump();

      final indicator = tester.widget<PinDotIndicator>(
        find.byType(PinDotIndicator),
      );
      expect(indicator.length, 0);
    });
  });
}
