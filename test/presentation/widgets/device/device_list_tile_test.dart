import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fleetpilot/domain/entities/device.dart';
import 'package:fleetpilot/presentation/widgets/device/device_list_tile.dart';
import 'package:fleetpilot/presentation/widgets/device/platform_icon.dart';

void main() {
  Device makeDevice({
    String deviceId = 'dev-001',
    String? deviceName = 'Test MacBook',
    String? serialNumber = 'C02XL12345',
    String? platform = 'Mac',
    String? model = 'MacBook Pro',
    String? osVersion = '14.2',
    String? generalStatus,
    String? lostModeStatus,
    bool isSupervised = false,
    DeviceUser? user,
    String? lastCheckIn,
  }) {
    return Device.fromJson({
      'device_id': deviceId,
      'device_name': deviceName,
      'serial_number': serialNumber,
      'platform': platform,
      'model': model,
      'os_version': osVersion,
      'general_status': generalStatus,
      'lost_mode_status': lostModeStatus,
      'is_supervised': isSupervised,
      if (user != null)
        'user': {
          'email': user.email,
          'name': user.name,
          'user_id': user.userId,
        },
      'last_check_in': lastCheckIn,
    });
  }

  Widget buildSubject({
    required Device device,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    bool isSelectionMode = false,
    bool isSelected = false,
    VoidCallback? onSelectionToggle,
  }) {
    return MaterialApp(
      home: Scaffold(
        body: DeviceListTile(
          device: device,
          onTap: onTap ?? () {},
          onLongPress: onLongPress,
          isSelectionMode: isSelectionMode,
          isSelected: isSelected,
          onSelectionToggle: onSelectionToggle,
        ),
      ),
    );
  }

  group('DeviceListTile', () {
    testWidgets('displays device name as title', (WidgetTester tester) async {
      await tester.pumpWidget(
        buildSubject(device: makeDevice(deviceName: 'Office iMac')),
      );

      expect(find.text('Office iMac'), findsOneWidget);
    });

    testWidgets('displays serial number when device name is null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(
          device: makeDevice(deviceName: null, serialNumber: 'SERIAL123'),
        ),
      );

      expect(find.text('SERIAL123'), findsAtLeast(1));
    });

    testWidgets('displays "Unknown Device" when name and serial are null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(device: makeDevice(deviceName: null, serialNumber: null)),
      );

      expect(find.text('Unknown Device'), findsOneWidget);
    });

    testWidgets('displays PlatformIcon for the device platform', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(device: makeDevice(platform: 'iPhone')),
      );

      expect(find.byType(PlatformIcon), findsOneWidget);
    });

    testWidgets('displays subtitle with serial, model, and user', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(
          device: makeDevice(
            serialNumber: 'SN999',
            model: 'MacBook Air',
            user: const DeviceUser(name: 'John Doe', email: 'john@example.com'),
          ),
        ),
      );

      expect(
        find.text('SN999 \u00B7 MacBook Air \u00B7 John Doe'),
        findsOneWidget,
      );
    });

    testWidgets('subtitle handles missing fields gracefully', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(
          device: makeDevice(serialNumber: null, model: 'Mac Mini', user: null),
        ),
      );

      expect(find.text('Mac Mini'), findsOneWidget);
    });

    testWidgets('displays lost mode badge when lostModeStatus is ENABLED', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(device: makeDevice(lostModeStatus: 'ENABLED')),
      );

      expect(find.text('Lost'), findsOneWidget);
      expect(find.byIcon(Icons.location_off), findsOneWidget);
    });

    testWidgets('does not display lost badge when lostModeStatus is null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(device: makeDevice(lostModeStatus: null)),
      );

      expect(find.text('Lost'), findsNothing);
    });

    testWidgets('does not display lost badge for non-ENABLED status', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(device: makeDevice(lostModeStatus: 'DISABLED')),
      );

      expect(find.text('Lost'), findsNothing);
    });

    testWidgets('displays compliance dot for PASS status', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(device: makeDevice(generalStatus: 'PASS')),
      );

      final containers = tester
          .widgetList<Container>(find.byType(Container))
          .where(
            (c) =>
                c.constraints?.maxWidth == 10 && c.constraints?.maxHeight == 10,
          )
          .toList();
      expect(containers, isNotEmpty);
    });

    testWidgets('does not display compliance dot when generalStatus is null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(device: makeDevice(generalStatus: null)),
      );

      final dotContainers = tester
          .widgetList<Container>(find.byType(Container))
          .where(
            (c) =>
                c.constraints?.maxWidth == 10 && c.constraints?.maxHeight == 10,
          )
          .toList();
      expect(dotContainers, isEmpty);
    });

    testWidgets('displays chevron_right icon', (WidgetTester tester) async {
      await tester.pumpWidget(buildSubject(device: makeDevice()));

      expect(find.byIcon(Icons.chevron_right), findsOneWidget);
    });

    testWidgets('invokes onTap when tapped outside selection mode', (
      WidgetTester tester,
    ) async {
      var tapped = false;
      await tester.pumpWidget(
        buildSubject(device: makeDevice(), onTap: () => tapped = true),
      );

      await tester.tap(find.byType(InkWell));
      expect(tapped, isTrue);
    });

    testWidgets('invokes onLongPress when long-pressed', (
      WidgetTester tester,
    ) async {
      var longPressed = false;
      await tester.pumpWidget(
        buildSubject(
          device: makeDevice(),
          onLongPress: () => longPressed = true,
        ),
      );

      await tester.longPress(find.byType(InkWell));
      expect(longPressed, isTrue);
    });

    group('selection mode', () {
      testWidgets('displays checkbox in selection mode', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          buildSubject(
            device: makeDevice(),
            isSelectionMode: true,
            onSelectionToggle: () {},
          ),
        );

        expect(find.byType(Checkbox), findsOneWidget);
      });

      testWidgets('checkbox is checked when isSelected is true', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          buildSubject(
            device: makeDevice(),
            isSelectionMode: true,
            isSelected: true,
            onSelectionToggle: () {},
          ),
        );

        final checkbox = tester.widget<Checkbox>(find.byType(Checkbox));
        expect(checkbox.value, isTrue);
      });

      testWidgets('checkbox is unchecked when isSelected is false', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          buildSubject(
            device: makeDevice(),
            isSelectionMode: true,
            isSelected: false,
            onSelectionToggle: () {},
          ),
        );

        final checkbox = tester.widget<Checkbox>(find.byType(Checkbox));
        expect(checkbox.value, isFalse);
      });

      testWidgets('tap invokes onSelectionToggle instead of onTap', (
        WidgetTester tester,
      ) async {
        var onTapCalled = false;
        var onToggleCalled = false;
        await tester.pumpWidget(
          buildSubject(
            device: makeDevice(),
            isSelectionMode: true,
            onTap: () => onTapCalled = true,
            onSelectionToggle: () => onToggleCalled = true,
          ),
        );

        await tester.tap(find.byType(InkWell));
        expect(onTapCalled, isFalse);
        expect(onToggleCalled, isTrue);
      });

      testWidgets('does not display checkbox outside selection mode', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          buildSubject(device: makeDevice(), isSelectionMode: false),
        );

        expect(find.byType(Checkbox), findsNothing);
      });

      testWidgets('selected tile uses secondaryContainer color', (
        WidgetTester tester,
      ) async {
        await tester.pumpWidget(
          buildSubject(
            device: makeDevice(),
            isSelectionMode: true,
            isSelected: true,
            onSelectionToggle: () {},
          ),
        );

        final card = tester.widget<Card>(find.byType(Card));
        final theme = Theme.of(tester.element(find.byType(DeviceListTile)));
        expect(card.color, theme.colorScheme.secondaryContainer);
      });
    });

    testWidgets('displays relative last check-in time', (
      WidgetTester tester,
    ) async {
      final recentTime = DateTime.now()
          .subtract(const Duration(minutes: 5))
          .toIso8601String();
      await tester.pumpWidget(
        buildSubject(device: makeDevice(lastCheckIn: recentTime)),
      );

      expect(find.text('5 min ago'), findsOneWidget);
    });

    testWidgets('does not display last check-in when null', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(device: makeDevice(lastCheckIn: null)),
      );

      expect(find.textContaining('ago'), findsNothing);
    });

    testWidgets('lost mode badge is case insensitive', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        buildSubject(device: makeDevice(lostModeStatus: 'enabled')),
      );

      expect(find.text('Lost'), findsOneWidget);
    });
  });
}
