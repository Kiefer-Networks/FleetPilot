import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../pages/blueprints/blueprint_list_page.dart';
import '../pages/devices/device_list_page.dart';

class RootShell extends StatelessWidget {
  const RootShell({super.key, required this.child});

  final Widget child;

  /// Determines how many extra sidebar items to show based on available height.
  /// Returns 0–4: Library Items, Vulnerabilities, Threats, Behavioral Detections.
  static int _extraItemCount(double maxHeight) {
    // Each rail destination ~72px with label, plus padding
    const coreItems = 4; // Devices, Blueprints, Users, More
    const itemHeight = 72.0;
    const verticalPadding = 32.0;
    final available = maxHeight - verticalPadding - (coreItems * itemHeight);
    final extraFit = (available / itemHeight).floor();
    return extraFit.clamp(0, 4);
  }

  static int _indexFromLocation(
    String location,
    bool useRail,
    int extraItems,
  ) {
    if (location.startsWith('/blueprints')) return 1;
    if (location.startsWith('/users')) return 2;
    if (useRail) {
      var idx = 3;
      if (extraItems >= 1 &&
          location.startsWith('/more/library-items')) {
        return idx;
      }
      if (extraItems >= 1) idx++;
      if (extraItems >= 2 &&
          location.startsWith('/more/vulnerabilities')) {
        return idx;
      }
      if (extraItems >= 2) idx++;
      if (extraItems >= 3 &&
          (location.startsWith('/more/threats') ||
              location.startsWith('/more/behavioral-detections'))) {
        return idx;
      }
      if (extraItems >= 3) idx++;
      if (extraItems >= 4 &&
          location.startsWith('/more/behavioral-detections')) {
        return idx;
      }
      if (extraItems >= 4) idx++;
      // "More" is always last
      if (location.startsWith('/more')) return idx;
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
    int extraItems = 0,
  }) {
    if (!useRail) {
      final path = switch (index) {
        1 => '/blueprints',
        2 => '/users',
        3 => '/more',
        _ => '/devices',
      };
      context.go(path);
      return;
    }

    // Build the path list for the rail
    final paths = <String>['/devices', '/blueprints', '/users'];
    if (extraItems >= 1) paths.add('/more/library-items');
    if (extraItems >= 2) paths.add('/more/vulnerabilities');
    if (extraItems >= 3) paths.add('/more/threats');
    if (extraItems >= 4) paths.add('/more/behavioral-detections');
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

        if (useRail) {
          final extraItems = _extraItemCount(constraints.maxHeight);
          final selectedIndex = _indexFromLocation(
            location,
            true,
            extraItems,
          );

          final railDestinations = <NavigationRailDestination>[
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
            NavigationRailDestination(
              icon: const Icon(Icons.more_horiz_outlined),
              selectedIcon: const Icon(Icons.more_horiz),
              label: Text(l10n.navMore),
            ),
          ];

          final isDetail = _isDetailRoute(location);

          Widget body;
          if (selectedIndex == 0 || selectedIndex == 1) {
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
                      _onDestinationSelected(
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
