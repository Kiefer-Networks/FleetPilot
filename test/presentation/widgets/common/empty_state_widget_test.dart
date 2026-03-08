import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fleetpilot/presentation/widgets/common/empty_state_widget.dart';

void main() {
  Widget buildSubject({
    IconData icon = Icons.inbox,
    String title = 'No items',
    String? message,
    String? actionLabel,
    VoidCallback? onAction,
  }) {
    return MaterialApp(
      home: Scaffold(
        body: EmptyStateWidget(
          icon: icon,
          title: title,
          message: message,
          actionLabel: actionLabel,
          onAction: onAction,
        ),
      ),
    );
  }

  group('EmptyStateWidget', () {
    testWidgets('displays the icon', (WidgetTester tester) async {
      await tester.pumpWidget(buildSubject(icon: Icons.search_off));

      expect(find.byIcon(Icons.search_off), findsOneWidget);
    });

    testWidgets('displays the title text', (WidgetTester tester) async {
      await tester.pumpWidget(buildSubject(title: 'Nothing here'));

      expect(find.text('Nothing here'), findsOneWidget);
    });

    testWidgets('displays the message when provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(message: 'Try adjusting your filters'),
      );

      expect(find.text('Try adjusting your filters'), findsOneWidget);
    });

    testWidgets('does not display message when null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject(message: null));

      final textWidgets = tester.widgetList<Text>(find.byType(Text));
      expect(textWidgets.length, 1);
    });

    testWidgets(
      'displays action button when actionLabel and onAction provided',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          buildSubject(actionLabel: 'Refresh', onAction: () {}),
        );

        expect(find.widgetWithText(FilledButton, 'Refresh'), findsOneWidget);
      },
    );

    testWidgets('does not display action button when actionLabel is null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject(actionLabel: null));

      expect(find.byType(FilledButton), findsNothing);
    });

    testWidgets('does not display action button when onAction is null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject(actionLabel: 'Refresh'));

      expect(find.byType(FilledButton), findsNothing);
    });

    testWidgets('action button invokes onAction callback', (
      WidgetTester tester,
    ) async {
      var tapped = false;
      await tester.pumpWidget(
        buildSubject(actionLabel: 'Retry', onAction: () => tapped = true),
      );

      await tester.tap(find.widgetWithText(FilledButton, 'Retry'));
      expect(tapped, isTrue);
    });

    testWidgets('icon has size 64', (WidgetTester tester) async {
      await tester.pumpWidget(buildSubject());

      final icon = tester.widget<Icon>(find.byType(Icon));
      expect(icon.size, 64);
    });

    testWidgets('is centered on the screen', (WidgetTester tester) async {
      await tester.pumpWidget(buildSubject());

      expect(find.byType(Center), findsWidgets);
    });
  });
}
