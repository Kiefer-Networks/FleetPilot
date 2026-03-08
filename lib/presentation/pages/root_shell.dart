import 'package:flutter/material.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../pages/blueprints/blueprint_list_page.dart';
import '../pages/devices/device_list_page.dart';

class RootShell extends StatelessWidget {
  const RootShell({super.key, required this.child});

  final Widget child;

  static int _indexFromLocation(String location) {
    if (location.startsWith('/blueprints')) return 1;
    if (location.startsWith('/users')) return 2;
    if (location.startsWith('/more')) return 3;
    return 0;
  }

  static bool _isDetailRoute(String location) {
    final devicesDetail = RegExp(r'^/devices/[^/]+$');
    final blueprintsDetail = RegExp(r'^/blueprints/[^/]+$');
    return devicesDetail.hasMatch(location) ||
        blueprintsDetail.hasMatch(location);
  }

  static void _onDestinationSelected(BuildContext context, int index) {
    final path = switch (index) {
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
    final location = GoRouterState.of(context).uri.path;
    final selectedIndex = _indexFromLocation(location);

    final destinations = [
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

    final railDestinations = destinations
        .map(
          (d) => NavigationRailDestination(
            icon: d.icon,
            selectedIcon: d.selectedIcon,
            label: Text(d.label),
          ),
        )
        .toList(growable: false);

    return LayoutBuilder(
      builder: (context, constraints) {
        final useRail = constraints.maxWidth >= 600;

        if (useRail) {
          final isDetail = _isDetailRoute(location);
          final showSplit =
              (selectedIndex == 0 || selectedIndex == 1) || isDetail;

          Widget body;
          if (showSplit && (selectedIndex == 0 || selectedIndex == 1)) {
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
                      _onDestinationSelected(context, index),
                  labelType: NavigationRailLabelType.selected,
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
            destinations: destinations,
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
