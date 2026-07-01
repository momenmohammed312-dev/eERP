import 'package:flutter/material.dart';

/// Predefined box shadows aligned with Material 3 elevation tiers.
///
/// Usage:
/// ```dart
/// Container(
///   decoration: BoxDecoration(
///     boxShadow: AppShadows.card,
///   ),
/// )
/// ```
abstract final class AppShadows {
  AppShadows._();

  /// No shadow — flat, tonal surface (elevation 0).
  static const List<BoxShadow> none = [];

  /// Minimal shadow (disabled for flat look)
  static const List<BoxShadow> subtle = [];

  /// Card shadow (disabled for flat look)
  static const List<BoxShadow> card = [];

  /// Elevated shadow (disabled for flat look)
  static const List<BoxShadow> elevated = [];

  /// Modal shadow (disabled for flat look)
  static const List<BoxShadow> modal = [];
}
