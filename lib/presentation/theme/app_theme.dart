import 'package:flutter/material.dart';

import 'color_schemes.dart';

/// Creates the Material 3 light theme for FleetPilot.
ThemeData buildLightTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    navigationBarTheme: NavigationBarThemeData(
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      elevation: 2,
      indicatorColor: lightColorScheme.secondaryContainer,
      height: 80,
    ),
    navigationRailTheme: NavigationRailThemeData(
      indicatorColor: lightColorScheme.secondaryContainer,
      labelType: NavigationRailLabelType.all,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: false,
      scrolledUnderElevation: 2,
      backgroundColor: lightColorScheme.surface,
      surfaceTintColor: lightColorScheme.surfaceTint,
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: lightColorScheme.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
    ),
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      showCheckmark: false,
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      showDragHandle: true,
      dragHandleSize: Size(32, 4),
    ),
    dividerTheme: DividerThemeData(
      color: lightColorScheme.outlineVariant,
      space: 1,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
  );
}

/// Creates the Material 3 dark theme for FleetPilot.
ThemeData buildDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    navigationBarTheme: NavigationBarThemeData(
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      elevation: 2,
      indicatorColor: darkColorScheme.secondaryContainer,
      height: 80,
    ),
    navigationRailTheme: NavigationRailThemeData(
      indicatorColor: darkColorScheme.secondaryContainer,
      labelType: NavigationRailLabelType.all,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: false,
      scrolledUnderElevation: 2,
      backgroundColor: darkColorScheme.surface,
      surfaceTintColor: darkColorScheme.surfaceTint,
    ),
    cardTheme: CardThemeData(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: darkColorScheme.outlineVariant),
      ),
      clipBehavior: Clip.antiAlias,
    ),
    listTileTheme: const ListTileThemeData(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      showCheckmark: false,
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      showDragHandle: true,
      dragHandleSize: Size(32, 4),
    ),
    dividerTheme: DividerThemeData(
      color: darkColorScheme.outlineVariant,
      space: 1,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
  );
}
