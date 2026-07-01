import 'package:flutter/material.dart';

/// Reusable border radii and border shapes used across the app.
///
/// Usage:
/// ```dart
/// Container(decoration: BoxDecoration(borderRadius: AppBorders.md))
/// ```
abstract final class AppBorders {
  AppBorders._();

  // ── Border Radii ──────────────────────────────────────────────────────────

  /// 4 pt — subtle rounding, used for small chips, badges.
  static const BorderRadius xs = BorderRadius.all(Radius.circular(4));

  /// 6 pt — standard rounding for buttons, text fields.
  static const BorderRadius sm6 = BorderRadius.all(Radius.circular(6));

  /// 8 pt — standard rounding for cards, dashboard widgets.
  static const BorderRadius sm = BorderRadius.all(Radius.circular(8));

  /// 12 pt — medium rounding for list tiles.
  static const BorderRadius md = BorderRadius.all(Radius.circular(12));

  /// 16 pt — large rounding for modals.
  static const BorderRadius lg = BorderRadius.all(Radius.circular(16));

  /// 24 pt — extra large rounding for dialogs.
  static const BorderRadius xl = BorderRadius.all(Radius.circular(24));

  /// 28 pt — Material 3 bottom sheet top radius.
  static const BorderRadius bottomSheet = BorderRadius.vertical(
    top: Radius.circular(8), // Reduced top radius for Stitch minimalist sheets
  );

  /// Fully circular (pill/stadium shape).
  static const BorderRadius full = BorderRadius.all(Radius.circular(999));

  // ── Semantic aliases ──────────────────────────────────────────────────────

  /// Default button border radius (6 px).
  static const BorderRadius button = sm6;

  /// Default card border radius (8 px).
  static const BorderRadius card = sm;

  /// Default input field border radius (6 px).
  static const BorderRadius input = sm6;

  /// Default dialog border radius (8 px).
  static const BorderRadius dialog = sm;

  // ── RoundedRectangleBorder shapes (for ShapeBorder APIs) ─────────────────

  /// Small rounded rectangle shape (8 pt).
  static const RoundedRectangleBorder shapeSm = RoundedRectangleBorder(
    borderRadius: sm,
  );

  /// Medium rounded rectangle shape (12 pt).
  static const RoundedRectangleBorder shapeMd = RoundedRectangleBorder(
    borderRadius: md,
  );

  /// Large rounded rectangle shape (16 pt).
  static const RoundedRectangleBorder shapeLg = RoundedRectangleBorder(
    borderRadius: lg,
  );

  /// Fully circular/stadium shape.
  static const StadiumBorder stadium = StadiumBorder();
}
