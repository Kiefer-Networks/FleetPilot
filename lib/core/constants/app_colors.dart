import 'package:flutter/material.dart';

/// Semantic and icon colors for FleetPilot.
///
/// Status colors adapt to brightness; icon colors provide
/// light/dark variants for proper contrast on any surface.
abstract final class AppColors {
  // ─── Semantic status ────────────────────────────────────

  static Color success(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFF059669)
          : const Color(0xFF34D399);

  static Color warning(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFFD97706)
          : const Color(0xFFFBBF24);

  static Color info(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFF2563EB)
          : const Color(0xFF60A5FA);

  static Color neutral(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFF6B7280)
          : const Color(0xFF9CA3AF);

  // ─── Status backgrounds (12% opacity on light, 16% on dark) ─

  static Color successContainer(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFFECFDF5)
          : const Color(0xFF064E3B);

  static Color warningContainer(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFFFFFBEB)
          : const Color(0xFF78350F);

  static Color infoContainer(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFFEFF6FF)
          : const Color(0xFF1E3A5F);

  static Color neutralContainer(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFFF3F4F6)
          : const Color(0xFF374151);

  // ─── Icon palette (theme-aware) ─────────────────────────

  static Color iconOrange(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFFEA580C)
          : const Color(0xFFFB923C);

  static Color iconBlue(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFF1D4ED8)
          : const Color(0xFF60A5FA);

  static Color iconGreen(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFF16A34A)
          : const Color(0xFF4ADE80);

  static Color iconRed(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFFDC2626)
          : const Color(0xFFF87171);

  static Color iconTeal(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFF0D9488)
          : const Color(0xFF2DD4BF);

  static Color iconPurple(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFF7C3AED)
          : const Color(0xFFA78BFA);

  static Color iconIndigo(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFF4338CA)
          : const Color(0xFF818CF8);

  static Color iconCyan(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFF0891B2)
          : const Color(0xFF22D3EE);

  static Color iconDeepOrange(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFFC2410C)
          : const Color(0xFFFB923C);

  static Color iconAmber(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFFD97706)
          : const Color(0xFFFBBF24);

  static Color iconGrey(Brightness brightness) =>
      brightness == Brightness.light
          ? const Color(0xFF475569)
          : const Color(0xFF94A3B8);
}
