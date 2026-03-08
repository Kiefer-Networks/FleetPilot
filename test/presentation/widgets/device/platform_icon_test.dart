import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fleetpilot/presentation/widgets/device/platform_icon.dart';

void main() {
  Widget buildSubject({String? platform, double size = 24}) {
    return MaterialApp(
      home: Scaffold(
        body: PlatformIcon(platform: platform, size: size),
      ),
    );
  }

  group('PlatformIcon', () {
    testWidgets('displays laptop_mac icon for Mac platform', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject(platform: 'Mac'));

      final icon = tester.widget<Icon>(find.byType(Icon));
      expect(icon.icon, Icons.laptop_mac);
    });

    testWidgets('displays phone_iphone icon for iPhone platform', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject(platform: 'iPhone'));

      final icon = tester.widget<Icon>(find.byType(Icon));
      expect(icon.icon, Icons.phone_iphone);
    });

    testWidgets('displays tablet_mac icon for iPad platform', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject(platform: 'iPad'));

      final icon = tester.widget<Icon>(find.byType(Icon));
      expect(icon.icon, Icons.tablet_mac);
    });

    testWidgets('displays tv icon for AppleTV platform', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject(platform: 'AppleTV'));

      final icon = tester.widget<Icon>(find.byType(Icon));
      expect(icon.icon, Icons.tv);
    });

    testWidgets('displays devices_other icon for unknown platform', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject(platform: 'SomethingElse'));

      final icon = tester.widget<Icon>(find.byType(Icon));
      expect(icon.icon, Icons.devices_other);
    });

    testWidgets('displays devices_other icon for null platform', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject(platform: null));

      final icon = tester.widget<Icon>(find.byType(Icon));
      expect(icon.icon, Icons.devices_other);
    });

    testWidgets('is case-insensitive for platform matching', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(buildSubject(platform: 'mac'));

      final icon = tester.widget<Icon>(find.byType(Icon));
      expect(icon.icon, Icons.laptop_mac);
    });

    testWidgets('respects custom size parameter', (WidgetTester tester) async {
      await tester.pumpWidget(buildSubject(platform: 'Mac', size: 48));

      final icon = tester.widget<Icon>(find.byType(Icon));
      expect(icon.size, 48);
    });

    testWidgets('uses default size of 24', (WidgetTester tester) async {
      await tester.pumpWidget(buildSubject(platform: 'Mac'));

      final icon = tester.widget<Icon>(find.byType(Icon));
      expect(icon.size, 24);
    });
  });
}
