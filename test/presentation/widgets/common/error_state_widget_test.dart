import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fleetpilot/core/errors/failures.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:fleetpilot/presentation/widgets/common/error_state_widget.dart';

void main() {
  Widget buildSubject({
    required Object failure,
    required VoidCallback onRetry,
  }) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
      home: Scaffold(
        body: ErrorStateWidget(failure: failure, onRetry: onRetry),
      ),
    );
  }

  group('ErrorStateWidget', () {
    testWidgets('displays error icon', (WidgetTester tester) async {
      await tester.pumpWidget(
        buildSubject(failure: const NetworkFailure(), onRetry: () {}),
      );
      await tester.pumpAndSettle();

      expect(find.byIcon(Icons.error_outline), findsOneWidget);
    });

    testWidgets('displays retry button', (WidgetTester tester) async {
      await tester.pumpWidget(
        buildSubject(failure: const NetworkFailure(), onRetry: () {}),
      );
      await tester.pumpAndSettle();

      expect(find.text('Retry'), findsOneWidget);
      expect(find.byIcon(Icons.refresh), findsOneWidget);
    });

    testWidgets('retry button invokes onRetry callback', (
      WidgetTester tester,
    ) async {
      var retried = false;
      await tester.pumpWidget(
        buildSubject(
          failure: const NetworkFailure(),
          onRetry: () => retried = true,
        ),
      );
      await tester.pumpAndSettle();

      await tester.tap(find.text('Retry'));
      expect(retried, isTrue);
    });

    testWidgets('displays network error message for NetworkFailure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(failure: const NetworkFailure(), onRetry: () {}),
      );
      await tester.pumpAndSettle();

      expect(
        find.text(
          'Could not reach the API. Check your internet connection and subdomain.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('displays unauthorized message for UnauthorizedFailure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(failure: const UnauthorizedFailure(), onRetry: () {}),
      );
      await tester.pumpAndSettle();

      expect(
        find.text(
          'Invalid API token. Please check your token in the web console.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('displays forbidden message for ForbiddenFailure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(failure: const ForbiddenFailure(), onRetry: () {}),
      );
      await tester.pumpAndSettle();

      expect(
        find.text(
          'Token lacks required permissions. Ensure the token has read access to Devices.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('displays not found message for NotFoundFailure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(failure: const NotFoundFailure(), onRetry: () {}),
      );
      await tester.pumpAndSettle();

      expect(
        find.text('The requested resource was not found.'),
        findsOneWidget,
      );
    });

    testWidgets('displays validation message for ValidationFailure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(failure: const ValidationFailure(), onRetry: () {}),
      );
      await tester.pumpAndSettle();

      expect(
        find.text(
          'The request contained invalid data. Please check your input.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('displays rate limit message for RateLimitFailure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(failure: const RateLimitFailure(), onRetry: () {}),
      );
      await tester.pumpAndSettle();

      expect(
        find.text('Too many requests. Please wait a moment and try again.'),
        findsOneWidget,
      );
    });

    testWidgets('displays server error message for ServerFailure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(failure: const ServerFailure(), onRetry: () {}),
      );
      await tester.pumpAndSettle();

      expect(
        find.text('The server encountered an error. Please try again later.'),
        findsOneWidget,
      );
    });

    testWidgets('displays network error message for CertificatePinningFailure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(
          failure: const CertificatePinningFailure(),
          onRetry: () {},
        ),
      );
      await tester.pumpAndSettle();

      expect(
        find.text(
          'Could not reach the API. Check your internet connection and subdomain.',
        ),
        findsOneWidget,
      );
    });

    testWidgets('displays unexpected error message for unknown failure type', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(failure: 'some string error', onRetry: () {}),
      );
      await tester.pumpAndSettle();

      expect(
        find.text('An unexpected error occurred. Please try again.'),
        findsOneWidget,
      );
    });
  });
}
