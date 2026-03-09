import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../pages/blueprints/blueprint_list_page.dart';
import '../pages/devices/device_list_page.dart';

class RootShell extends StatelessWidget {
  const RootShell({super.key, required this.child});

  final Widget child;

  /// Mobile bottom nav: Devices, Prism, Users, More
  /// Tablet rail: Devices, Prism, Users, Blueprints + as many extras as fit + More
  static int _extraItemCount(double maxHeight) {
    // Core rail items: Devices, Prism, Users, Blueprints, More = 5
    const coreItems = 5;
    const itemHeight = 72.0;
    const verticalPadding = 32.0;
    final available = maxHeight - verticalPadding - (coreItems * itemHeight);
    final extraFit = (available / itemHeight).floor();
    // Extras: Library Items, Vulnerabilities, Threats, Behavioral Detections,
    //         ADE, Audit Log, Tags
    return extraFit.clamp(0, 7);
  }

  static int _indexFromLocation(String location, bool useRail, int extraItems) {
    if (location.startsWith('/prism')) return 1;
    if (location.startsWith('/users')) return 2;

    if (useRail) {
      // Tablet: Devices(0), Prism(1), Users(2), Blueprints(3), extras..., More
      if (location.startsWith('/blueprints')) return 3;

      var idx = 4;
      final extras = <String>[
        '/more/library-items',
        '/more/vulnerabilities',
        '/more/threats',
        '/more/behavioral-detections',
        '/more/ade-integrations',
        '/more/audit-log',
        '/more/tags',
      ];
      for (var i = 0; i < extras.length && i < extraItems; i++) {
        if (location.startsWith(extras[i])) return idx;
        idx++;
      }
      // "More" is always last
      if (location.startsWith('/more')) return idx;
    } else {
      // Mobile: Devices(0), Prism(1), Users(2), More(3)
      if (location.startsWith('/blueprints') || location.startsWith('/more')) {
        return 3;
      }
    }
    return 0;
  }

  static bool _isDetailRoute(String location) {
    final devicesDetail = RegExp(r'^/devices/[^/]+$');
    final blueprintsDetail = RegExp(r'^/blueprints/[^/]+$');
    return devicesDetail.hasMatch(location) ||
        blueprintsDetail.hasMatch(location);
  }

  static void _onDestinationSelected(
    BuildContext context,
    int index, {
    bool useRail = false,
    int extraItems = 0,
  }) {
    if (!useRail) {
      // Mobile: Devices, Prism, Users, More
      final path = switch (index) {
        1 => '/prism',
        2 => '/users',
        3 => '/more',
        _ => '/devices',
      };
      context.go(path);
      return;
    }

    // Tablet rail paths
    final paths = <String>['/devices', '/prism', '/users', '/blueprints'];
    final extras = [
      '/more/library-items',
      '/more/vulnerabilities',
      '/more/threats',
      '/more/behavioral-detections',
      '/more/ade-integrations',
      '/more/audit-log',
      '/more/tags',
    ];
    for (var i = 0; i < extraItems && i < extras.length; i++) {
      paths.add(extras[i]);
    }
    paths.add('/more');

    if (index < paths.length) {
      context.go(paths[index]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    final phoneDestinations = [
      NavigationDestination(
        icon: const Icon(Icons.devices_outlined),
        selectedIcon: const Icon(Icons.devices),
        label: l10n.navDevices,
      ),
      NavigationDestination(
        icon: const Icon(Icons.analytics_outlined),
        selectedIcon: const Icon(Icons.analytics),
        label: l10n.navPrism,
      ),
      NavigationDestination(
        icon: const Icon(Icons.people_outline),
        selectedIcon: const Icon(Icons.people),
        label: l10n.navUsers,
      ),
      NavigationDestination(
        icon: const Icon(Icons.more_horiz_outlined),
        selectedIcon: const Icon(Icons.more_horiz),
        label: l10n.navMore,
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final useRail = constraints.maxWidth >= 600;
        final location = GoRouterState.of(context).uri.path;

        if (useRail) {
          final extraItems = _extraItemCount(constraints.maxHeight);
          final selectedIndex = _indexFromLocation(location, true, extraItems);

          final railDestinations = <NavigationRailDestination>[
            NavigationRailDestination(
              icon: const Icon(Icons.devices_outlined),
              selectedIcon: const Icon(Icons.devices),
              label: Text(l10n.navDevices),
            ),
            NavigationRailDestination(
              icon: const Icon(Icons.analytics_outlined),
              selectedIcon: const Icon(Icons.analytics),
              label: Text(l10n.navPrism),
            ),
            NavigationRailDestination(
              icon: const Icon(Icons.people_outline),
              selectedIcon: const Icon(Icons.people),
              label: Text(l10n.navUsers),
            ),
            NavigationRailDestination(
              icon: const Icon(Icons.layers_outlined),
              selectedIcon: const Icon(Icons.layers),
              label: Text(l10n.navBlueprints),
            ),
            if (extraItems >= 1)
              NavigationRailDestination(
                icon: const Icon(Icons.inventory_2_outlined),
                selectedIcon: const Icon(Icons.inventory_2),
                label: Text(l10n.libraryItems),
              ),
            if (extraItems >= 2)
              NavigationRailDestination(
                icon: const Icon(Icons.shield_outlined),
                selectedIcon: const Icon(Icons.shield),
                label: Text(l10n.vulnerabilities),
              ),
            if (extraItems >= 3)
              NavigationRailDestination(
                icon: const Icon(Icons.bug_report_outlined),
                selectedIcon: const Icon(Icons.bug_report),
                label: Text(l10n.threats),
              ),
            if (extraItems >= 4)
              NavigationRailDestination(
                icon: const Icon(Icons.psychology_outlined),
                selectedIcon: const Icon(Icons.psychology),
                label: Text(l10n.behavioralDetections),
              ),
            if (extraItems >= 5)
              NavigationRailDestination(
                icon: const Icon(Icons.device_hub_outlined),
                selectedIcon: const Icon(Icons.device_hub),
                label: Text(l10n.adeIntegrations),
              ),
            if (extraItems >= 6)
              NavigationRailDestination(
                icon: const Icon(Icons.history),
                selectedIcon: const Icon(Icons.history),
                label: Text(l10n.auditLog),
              ),
            if (extraItems >= 7)
              NavigationRailDestination(
                icon: const Icon(Icons.label_outlined),
                selectedIcon: const Icon(Icons.label),
                label: Text(l10n.manageTags),
              ),
            NavigationRailDestination(
              icon: const Icon(Icons.more_horiz_outlined),
              selectedIcon: const Icon(Icons.more_horiz),
              label: Text(l10n.navMore),
            ),
          ];

          final isDetail = _isDetailRoute(location);

          Widget body;
          if (selectedIndex == 0 || selectedIndex == 3) {
            // Master-detail for Devices (0) and Blueprints (3)
            body = _MasterDetailLayout(
              selectedIndex: selectedIndex,
              isDetail: isDetail,
              detailChild: child,
              location: location,
            );
          } else {
            body = child;
          }

          return Scaffold(
            body: Row(
              children: [
                NavigationRail(
                  selectedIndex: selectedIndex,
                  onDestinationSelected: (index) => _onDestinationSelected(
                    context,
                    index,
                    useRail: true,
                    extraItems: extraItems,
                  ),
                  labelType: NavigationRailLabelType.all,
                  destinations: railDestinations,
                ),
                const VerticalDivider(thickness: 1, width: 1),
                Expanded(child: body),
              ],
            ),
          );
        }

        final selectedIndex = _indexFromLocation(location, false, 0);

        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) =>
                _onDestinationSelected(context, index),
            destinations: phoneDestinations,
          ),
        );
      },
    );
  }
}

class _MasterDetailLayout extends StatelessWidget {
  const _MasterDetailLayout({
    required this.selectedIndex,
    required this.isDetail,
    required this.detailChild,
    required this.location,
  });

  final int selectedIndex;
  final bool isDetail;
  final Widget detailChild;
  final String location;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    final Widget listPane;
    if (selectedIndex == 0) {
      listPane = const DeviceListPage(isEmbedded: true);
    } else {
      listPane = const BlueprintListPage(isEmbedded: true);
    }

    final Widget detailPane;
    if (isDetail) {
      detailPane = detailChild;
    } else {
      final message = selectedIndex == 0
          ? l10n.selectADevice
          : l10n.selectABlueprint;
      final icon = selectedIndex == 0
          ? Icons.devices_outlined
          : Icons.layers_outlined;
      detailPane = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 64, color: theme.colorScheme.onSurfaceVariant),
            const SizedBox(height: 16),
            Text(
              message,
              style: theme.textTheme.titleMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return Row(
      children: [
        SizedBox(width: 360, child: listPane),
        const VerticalDivider(thickness: 1, width: 1),
        Expanded(child: detailPane),
      ],
    );
  }
}
