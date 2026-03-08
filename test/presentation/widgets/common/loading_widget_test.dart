import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fleetpilot/presentation/widgets/common/loading_widget.dart';

void main() {
  Widget buildSubject({String? message}) {
    return MaterialApp(
      home: Scaffold(body: LoadingWidget(message: message)),
    );
  }

  group('LoadingWidget', () {
    testWidgets('displays a CircularProgressIndicator', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject());

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('displays message text when provided', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject(message: 'Loading devices...'));

      expect(find.text('Loading devices...'), findsOneWidget);
    });

    testWidgets('does not display message text when null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject());

      expect(find.byType(Text), findsNothing);
    });

    testWidgets('is centered on the screen', (WidgetTester tester) async {
      await tester.pumpWidget(buildSubject());

      expect(find.byType(Center), findsWidgets);
    });

    testWidgets('message has top padding of 16', (WidgetTester tester) async {
      await tester.pumpWidget(buildSubject(message: 'Loading...'));

      final padding = tester.widget<Padding>(
        find.ancestor(
          of: find.text('Loading...'),
          matching: find.byType(Padding),
        ),
      );
      expect(padding.padding, const EdgeInsets.only(top: 16));
    });
  });
}
