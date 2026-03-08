import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../pages/blueprints/blueprint_list_page.dart';
import '../pages/devices/device_list_page.dart';

class RootShell extends StatelessWidget {
  const RootShell({super.key, required this.child});

  final Widget child;

  static int _indexFromLocation(String location, bool useRail) {
    if (location.startsWith('/blueprints')) return 1;
    if (location.startsWith('/users')) return 2;
    if (useRail) {
      // Extended rail destinations
      if (location.startsWith('/more/library-items')) return 3;
      if (location.startsWith('/more/vulnerabilities')) return 4;
      if (location.startsWith('/more/threats') ||
          location.startsWith('/more/behavioral-detections')) {
        return 5;
      }
      if (location.startsWith('/more')) return 6;
    } else {
      if (location.startsWith('/more')) return 3;
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
  }) {
    final path = useRail
        ? switch (index) {
            1 => '/blueprints',
            2 => '/users',
            3 => '/more/library-items',
            4 => '/more/vulnerabilities',
            5 => '/more/threats',
            6 => '/more',
            _ => '/devices',
          }
        : switch (index) {
            1 => '/blueprints',
            2 => '/users',
            3 => '/more',
            _ => '/devices',
          };
    context.go(path);
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
        icon: const Icon(Icons.layers_outlined),
        selectedIcon: const Icon(Icons.layers),
        label: l10n.navBlueprints,
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
        final selectedIndex = _indexFromLocation(location, useRail);

        if (useRail) {
          final railDestinations = [
            NavigationRailDestination(
              icon: const Icon(Icons.devices_outlined),
              selectedIcon: const Icon(Icons.devices),
              label: Text(l10n.navDevices),
            ),
            NavigationRailDestination(
              icon: const Icon(Icons.layers_outlined),
              selectedIcon: const Icon(Icons.layers),
              label: Text(l10n.navBlueprints),
            ),
            NavigationRailDestination(
              icon: const Icon(Icons.people_outline),
              selectedIcon: const Icon(Icons.people),
              label: Text(l10n.navUsers),
            ),
            NavigationRailDestination(
              icon: const Icon(Icons.inventory_2_outlined),
              selectedIcon: const Icon(Icons.inventory_2),
              label: Text(l10n.libraryItems),
            ),
            NavigationRailDestination(
              icon: const Icon(Icons.shield_outlined),
              selectedIcon: const Icon(Icons.shield),
              label: Text(l10n.vulnerabilities),
            ),
            NavigationRailDestination(
              icon: const Icon(Icons.bug_report_outlined),
              selectedIcon: const Icon(Icons.bug_report),
              label: Text(l10n.threats),
            ),
            NavigationRailDestination(
              icon: const Icon(Icons.more_horiz_outlined),
              selectedIcon: const Icon(Icons.more_horiz),
              label: Text(l10n.navMore),
            ),
          ];

          final isDetail = _isDetailRoute(location);

          Widget body;
          if ((selectedIndex == 0 || selectedIndex == 1) &&
              (isDetail || !_isDetailRoute(location))) {
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
                  onDestinationSelected: (index) =>
                      _onDestinationSelected(context, index, useRail: true),
                  labelType: NavigationRailLabelType.all,
                  destinations: railDestinations,
                ),
                const VerticalDivider(thickness: 1, width: 1),
                Expanded(child: body),
              ],
            ),
          );
        }

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
