import 'package:flutter/material.dart';

/// FleetPilot enterprise color system.
///
/// Hand-crafted palettes for MDM professional aesthetics.
/// Avoids Material 3 seed-generated colors for full control.

const Color _primaryBlue = Color(0xFF1A56DB);

// ─── Light scheme ──────────────────────────────────────────

const ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  // Brand
  primary: _primaryBlue,
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFFDCE4F8),
  onPrimaryContainer: Color(0xFF0D2B6B),
  // Secondary (slate-blue for supporting elements)
  secondary: Color(0xFF4B5768),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFE8ECF2),
  onSecondaryContainer: Color(0xFF1E2A3A),
  // Tertiary (teal for accents)
  tertiary: Color(0xFF0E7490),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFD4F1F9),
  onTertiaryContainer: Color(0xFF063D4D),
  // Error
  error: Color(0xFFDC2626),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFEE2E2),
  onErrorContainer: Color(0xFF7F1D1D),
  // Surface
  surface: Color(0xFFFAFBFC),
  onSurface: Color(0xFF111827),
  onSurfaceVariant: Color(0xFF6B7280),
  // Containers
  surfaceContainerLowest: Color(0xFFFFFFFF),
  surfaceContainerLow: Color(0xFFF5F6F8),
  surfaceContainer: Color(0xFFF0F1F3),
  surfaceContainerHigh: Color(0xFFEBECEF),
  surfaceContainerHighest: Color(0xFFE5E7EB),
  // Surface tints
  surfaceTint: _primaryBlue,
  // Outline
  outline: Color(0xFFD1D5DB),
  outlineVariant: Color(0xFFE5E7EB),
  // Inverse
  inverseSurface: Color(0xFF1F2937),
  onInverseSurface: Color(0xFFF3F4F6),
  inversePrimary: Color(0xFF93B4F6),
  // Misc
  shadow: Color(0x1A000000),
  scrim: Color(0x33000000),
);

// ─── Dark scheme ───────────────────────────────────────────

const ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  // Brand
  primary: Color(0xFF93B4F6),
  onPrimary: Color(0xFF0D2B6B),
  primaryContainer: Color(0xFF1A3F8F),
  onPrimaryContainer: Color(0xFFDCE4F8),
  // Secondary
  secondary: Color(0xFFB0BAC9),
  onSecondary: Color(0xFF1E2A3A),
  secondaryContainer: Color(0xFF2D3A4D),
  onSecondaryContainer: Color(0xFFE0E5EE),
  // Tertiary
  tertiary: Color(0xFF67D8EF),
  onTertiary: Color(0xFF063D4D),
  tertiaryContainer: Color(0xFF0A5C72),
  onTertiaryContainer: Color(0xFFD4F1F9),
  // Error
  error: Color(0xFFF87171),
  onError: Color(0xFF7F1D1D),
  errorContainer: Color(0xFF991B1B),
  onErrorContainer: Color(0xFFFEE2E2),
  // Surface
  surface: Color(0xFF111318),
  onSurface: Color(0xFFF1F3F5),
  onSurfaceVariant: Color(0xFF9CA3AF),
  // Containers
  surfaceContainerLowest: Color(0xFF0B0D11),
  surfaceContainerLow: Color(0xFF171A21),
  surfaceContainer: Color(0xFF1E2028),
  surfaceContainerHigh: Color(0xFF252830),
  surfaceContainerHighest: Color(0xFF2D3039),
  // Surface tints
  surfaceTint: Color(0xFF93B4F6),
  // Outline
  outline: Color(0xFF3D4350),
  outlineVariant: Color(0xFF2D3039),
  // Inverse
  inverseSurface: Color(0xFFF3F4F6),
  onInverseSurface: Color(0xFF1F2937),
  inversePrimary: _primaryBlue,
  // Misc
  shadow: Color(0x40000000),
  scrim: Color(0x66000000),
);
