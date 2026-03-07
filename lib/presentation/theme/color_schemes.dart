import 'package:flutter/material.dart';

/// Enterprise-grade seed color conveying IT trust and professionalism.
const Color seedColor = Color(0xFF1A56DB);

/// Light color scheme generated from the seed color.
final ColorScheme lightColorScheme = ColorScheme.fromSeed(
  seedColor: seedColor,
  brightness: Brightness.light,
);

/// Dark color scheme generated from the seed color.
final ColorScheme darkColorScheme = ColorScheme.fromSeed(
  seedColor: seedColor,
  brightness: Brightness.dark,
);
