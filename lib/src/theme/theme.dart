import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'text_theme.dart';
import 'color_schemes.dart';

Color _colorFromHex(String hex) {
  final cleaned = hex.replaceFirst('#', '');
  return Color(int.parse('ff$cleaned', radix: 16));
}

/// Custom theme extension for spacing and other design tokens
class AppDesignTokens extends ThemeExtension<AppDesignTokens> {
  const AppDesignTokens({
    required this.paddingSmall,
    required this.paddingMedium,
    required this.paddingLarge,
    required this.borderRadiusSmall,
    required this.borderRadiusMedium,
    required this.borderRadiusLarge,
    required this.cardElevation,
  });

  final double paddingSmall;
  final double paddingMedium;
  final double paddingLarge;
  final double borderRadiusSmall;
  final double borderRadiusMedium;
  final double borderRadiusLarge;
  final double cardElevation;

  static const fallback = AppDesignTokens(
    paddingSmall: 8,
    paddingMedium: 16,
    paddingLarge: 24,
    borderRadiusSmall: 4,
    borderRadiusMedium: 12,
    borderRadiusLarge: 24,
    cardElevation: 0,
  );

  @override
  ThemeExtension<AppDesignTokens> copyWith({
    double? paddingSmall,
    double? paddingMedium,
    double? paddingLarge,
    double? borderRadiusSmall,
    double? borderRadiusMedium,
    double? borderRadiusLarge,
    double? cardElevation,
  }) {
    return AppDesignTokens(
      paddingSmall: paddingSmall ?? this.paddingSmall,
      paddingMedium: paddingMedium ?? this.paddingMedium,
      paddingLarge: paddingLarge ?? this.paddingLarge,
      borderRadiusSmall: borderRadiusSmall ?? this.borderRadiusSmall,
      borderRadiusMedium: borderRadiusMedium ?? this.borderRadiusMedium,
      borderRadiusLarge: borderRadiusLarge ?? this.borderRadiusLarge,
      cardElevation: cardElevation ?? this.cardElevation,
    );
  }

  @override
  ThemeExtension<AppDesignTokens> lerp(
    covariant ThemeExtension<AppDesignTokens>? other,
    double t,
  ) {
    if (other is! AppDesignTokens) return this;
    return AppDesignTokens(
      paddingSmall: lerpDouble(paddingSmall, other.paddingSmall, t)!,
      paddingMedium: lerpDouble(paddingMedium, other.paddingMedium, t)!,
      paddingLarge: lerpDouble(paddingLarge, other.paddingLarge, t)!,
      borderRadiusSmall: lerpDouble(borderRadiusSmall, other.borderRadiusSmall, t)!,
      borderRadiusMedium: lerpDouble(borderRadiusMedium, other.borderRadiusMedium, t)!,
      borderRadiusLarge: lerpDouble(borderRadiusLarge, other.borderRadiusLarge, t)!,
      cardElevation: lerpDouble(cardElevation, other.cardElevation, t)!,
    );
  }

  static double? lerpDouble(double? a, double? b, double t) {
    if (a == null && b == null) return null;
    a ??= 0.0;
    b ??= 0.0;
    return a + (b - a) * t;
  }
}

ThemeData _buildTheme(ColorScheme colorScheme, AppColorsExtension customColors) {
  final textTheme = buildTextTheme();
  
  return ThemeData(
    useMaterial3: true,
    primaryColor: colorScheme.primary,
    colorScheme: colorScheme,
    textTheme: textTheme,
    extensions: [
      customColors,
      AppDesignTokens.fallback,
    ],
    
    // --- Basic Elements ---
    scaffoldBackgroundColor: colorScheme.surface,
    dividerTheme: DividerThemeData(
      color: colorScheme.outlineVariant,
      thickness: 1,
      space: 1,
    ),
    iconTheme: IconThemeData(
      color: colorScheme.onSurface,
      size: 20, // 20px outline icons from Stitch
    ),
    
    // --- Widget Themes ---

    // App Bar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.surface,
      foregroundColor: colorScheme.onSurface,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w600,
        color: colorScheme.onSurface,
      ),
    ),

    // Button Themes (Stitch: 6px radius, 40px height for standard buttons)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        minimumSize: const Size(88, 40),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        elevation: 0,
      ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        minimumSize: const Size(88, 40),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        elevation: 0,
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(88, 40),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        side: BorderSide(color: colorScheme.primary, width: 1),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        minimumSize: const Size(88, 32),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      ),
    ),

    // Card Theme (Stitch: 1px outline border #E2E8F0, 8px radius, white background)
    cardTheme: CardThemeData(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: colorScheme.outlineVariant, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      color: colorScheme.surface,
    ),

    // Input Decoration Theme (Stitch: 1px border, 6px radius, background #FFFFFF)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.surface,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: colorScheme.outlineVariant),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: colorScheme.outlineVariant),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: colorScheme.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(color: colorScheme.error),
      ),
      floatingLabelStyle: TextStyle(color: colorScheme.primary),
      labelStyle: textTheme.labelMedium?.copyWith(color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6)),
      hintStyle: textTheme.labelMedium?.copyWith(color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5)),
    ),

    // Navigation Bar Theme
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: colorScheme.surfaceContainer,
      indicatorColor: colorScheme.secondaryContainer,
      elevation: 0,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      height: 64,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return textTheme.labelSmall?.copyWith(color: colorScheme.primary, fontWeight: FontWeight.bold);
        }
        return textTheme.labelSmall?.copyWith(color: colorScheme.onSurfaceVariant);
      }),
    ),

    // Navigation Rail Theme
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: colorScheme.surfaceContainer,
      indicatorColor: colorScheme.secondaryContainer,
      labelType: NavigationRailLabelType.all,
      unselectedLabelTextStyle: textTheme.labelSmall?.copyWith(color: colorScheme.onSurfaceVariant),
      selectedLabelTextStyle: textTheme.labelSmall?.copyWith(color: colorScheme.primary, fontWeight: FontWeight.bold),
    ),

    // Tab Bar Theme
    tabBarTheme: TabBarThemeData(
      labelColor: colorScheme.primary,
      unselectedLabelColor: colorScheme.onSurfaceVariant,
      indicatorColor: colorScheme.primary,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
      unselectedLabelStyle: textTheme.titleSmall,
    ),

    // Floating Action Button Theme
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),

    // Chip Theme
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      side: BorderSide(color: colorScheme.outlineVariant),
      backgroundColor: colorScheme.surfaceContainerLow,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      labelStyle: textTheme.labelMedium,
    ),

    // List Tile Theme
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      visualDensity: VisualDensity.comfortable,
      titleTextStyle: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
      subtitleTextStyle: textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant),
    ),

    // Checkbox Theme
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),

    // Switch Theme
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return colorScheme.primary;
        return colorScheme.outline;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return colorScheme.primaryContainer;
        return colorScheme.surfaceContainerHighest;
      }),
    ),

    // SnackBar Theme
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      elevation: 0,
      backgroundColor: colorScheme.inverseSurface,
      contentTextStyle: textTheme.bodyMedium?.copyWith(color: colorScheme.onInverseSurface),
    ),

    // Dialog Theme
    dialogTheme: DialogThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 0,
      backgroundColor: colorScheme.surface,
      titleTextStyle: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      contentTextStyle: textTheme.bodyMedium,
    ),

    // Bottom Sheet Theme
    bottomSheetTheme: const BottomSheetThemeData(
      showDragHandle: true,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8),
        ),
      ),
    ),

    // Search Bar Theme
    searchBarTheme: SearchBarThemeData(
      elevation: WidgetStateProperty.all(0),
      backgroundColor: WidgetStateProperty.all(colorScheme.surface),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(
        side: BorderSide(color: colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(6),
      )),
      padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 16)),
      hintStyle: WidgetStateProperty.all(textTheme.bodyLarge?.copyWith(color: colorScheme.onSurfaceVariant)),
    ),

    // Badge Theme
    badgeTheme: BadgeThemeData(
      backgroundColor: colorScheme.error,
      textColor: colorScheme.onError,
      textStyle: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),
    ),

    // Segmented Button Theme
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: SegmentedButton.styleFrom(
        selectedBackgroundColor: colorScheme.secondaryContainer,
        selectedForegroundColor: colorScheme.onSecondaryContainer,
        side: BorderSide(color: colorScheme.outline),
      ),
    ),

    // Tooltip Theme
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: colorScheme.inverseSurface.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(6),
      ),
      textStyle: textTheme.labelSmall?.copyWith(color: colorScheme.onInverseSurface),
    ),
  );
}

ThemeData buildLightTheme({required String primaryColorHex}) {
  final seed = _colorFromHex(primaryColorHex.isNotEmpty ? primaryColorHex : '#2E5395');
  final colorScheme = ColorScheme.fromSeed(
    seedColor: seed,
    brightness: Brightness.light,
    surface: const Color(0xFFF8F9FB), // light grey/blue surface background from Stitch
    surfaceContainerLow: const Color(0xFFF2F4F6),
    surfaceContainer: const Color(0xFFEDEEF0),
    surfaceContainerHigh: const Color(0xFFE7E8EA),
    surfaceContainerHighest: const Color(0xFFE1E2E4),
    outlineVariant: const Color(0xFFE2E8F0), // Border color from Stitch
  );
  return _buildTheme(colorScheme, AppPalettes.light);
}

ThemeData buildDarkTheme({required String primaryColorHex}) {
  final seed = _colorFromHex(primaryColorHex.isNotEmpty ? primaryColorHex : '#2E5395');
  final colorScheme = ColorScheme.fromSeed(
    seedColor: seed,
    brightness: Brightness.dark,
    surface: const Color(0xFF0F1115), // Dark background from Stitch
    surfaceContainerLow: const Color(0xFF15181C),
    surfaceContainer: const Color(0xFF1A1D23), // Dark surface
    outlineVariant: const Color(0xFF2E3132),
  );
  return _buildTheme(colorScheme, AppPalettes.dark);
}

CupertinoThemeData buildCupertinoTheme({required String primaryColorHex}) {
  final seed = _colorFromHex(primaryColorHex.isNotEmpty ? primaryColorHex : '#007AFF');

  return CupertinoThemeData(
    applyThemeToAll: true,
    primaryColor: seed,
    primaryContrastingColor: CupertinoColors.white,
    brightness: null, // Allow system-wide dark mode support
    scaffoldBackgroundColor: CupertinoColors.systemBackground,
    barBackgroundColor: CupertinoColors.systemGrey6,
    textTheme: CupertinoTextThemeData(
      primaryColor: seed,
      textStyle: const TextStyle(
        
        fontSize: 17,
        letterSpacing: -0.41,
      ),
      actionTextStyle: TextStyle(
        
        color: seed,
        fontSize: 17,
        fontWeight: FontWeight.w400,
      ),
      navTitleTextStyle: const TextStyle(
        
        fontWeight: FontWeight.w600,
        fontSize: 17,
        letterSpacing: -0.41,
      ),
      navLargeTitleTextStyle: const TextStyle(
        
        fontWeight: FontWeight.bold,
        fontSize: 34,
        letterSpacing: 0.41,
      ),
      tabLabelTextStyle: const TextStyle(
        
        fontSize: 10,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.24,
      ),
      pickerTextStyle: const TextStyle(
        
        fontSize: 21,
        letterSpacing: -0.41,
      ),
      dateTimePickerTextStyle: const TextStyle(
        
        fontSize: 21,
        letterSpacing: -0.41,
      ),
    ),
  );
}

