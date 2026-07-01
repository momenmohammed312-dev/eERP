import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Named spacing constants aligned with an 8-pt grid.
///
/// Usage:
/// ```dart
/// SizedBox(height: AppSpacing.md)        // 16 pt gap
/// Padding(padding: EdgeInsets.all(AppSpacing.lg))
/// ```
abstract final class AppSpacing {
  AppSpacing._();

  static const double _xxs = 2;
  static const double _xs = 4;
  static const double _sm = 8;
  static const double _md = 16;
  static const double _lg = 24;
  static const double _xl = 32;

  /// 4 px
  static double get xs => _xs.r;

  /// 8 px
  static double get sm => _sm.r;

  /// 16 px
  static double get md => _md.r;

  /// 24 px
  static double get lg => _lg.r;

  /// 32 px
  static double get xl => _xl.r;

  // ── Semantic aliases ──────────────────────────────────────────────────────

  /// Gutter width (16 px)
  static double get gutter => md;

  /// Outer page margins (24 px)
  static double get margin => lg;

  /// Standard horizontal page margin
  static double get pagePadding => lg;

  /// Gap between list/grid items
  static double get itemGap => md;

  /// Inner padding for cards
  static double get cardPadding => md;

  /// Vertical gap between form fields
  static double get formFieldGap => md;
}

