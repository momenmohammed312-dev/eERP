import 'package:flutter/material.dart';
import 'text_theme.dart';
import 'color_schemes.dart';
import 'app_design_tokens.dart';

Color colorFromHex(String hex) {
  final cleaned = hex.replaceFirst('#', '');
  return Color(int.parse('ff$cleaned', radix: 16));
}

ThemeData buildMaterialTheme(ColorScheme colorScheme, AppColorsExtension customColors) {
  final textTheme = buildTextTheme();

  return ThemeData(
    useMaterial3: true,
    primaryColor: colorScheme.primary,
    colorScheme: colorScheme,
    textTheme: textTheme,
    extensions: [customColors, AppDesignTokens.fallback],
    scaffoldBackgroundColor: colorScheme.surface,
    dividerTheme: DividerThemeData(
      color: colorScheme.outlineVariant,
      thickness: 1,
      space: 1,
    ),
    iconTheme: IconThemeData(color: colorScheme.onSurface, size: 20),
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
      labelStyle: textTheme.labelMedium?.copyWith(
          color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6)),
      hintStyle: textTheme.labelMedium?.copyWith(
          color: colorScheme.onSurfaceVariant.withValues(alpha: 0.5)),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: colorScheme.surfaceContainer,
      indicatorColor: colorScheme.secondaryContainer,
      elevation: 0,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      height: 64,
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return textTheme.labelSmall
              ?.copyWith(color: colorScheme.primary, fontWeight: FontWeight.bold);
        }
        return textTheme.labelSmall?.copyWith(color: colorScheme.onSurfaceVariant);
      }),
    ),
    navigationRailTheme: NavigationRailThemeData(
      backgroundColor: colorScheme.surfaceContainer,
      indicatorColor: colorScheme.secondaryContainer,
      labelType: NavigationRailLabelType.all,
      unselectedLabelTextStyle:
          textTheme.labelSmall?.copyWith(color: colorScheme.onSurfaceVariant),
      selectedLabelTextStyle: textTheme.labelSmall
          ?.copyWith(color: colorScheme.primary, fontWeight: FontWeight.bold),
    ),
    tabBarTheme: TabBarThemeData(
      labelColor: colorScheme.primary,
      unselectedLabelColor: colorScheme.onSurfaceVariant,
      indicatorColor: colorScheme.primary,
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
      unselectedLabelStyle: textTheme.titleSmall,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    chipTheme: ChipThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      side: BorderSide(color: colorScheme.outlineVariant),
      backgroundColor: colorScheme.surfaceContainerLow,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      labelStyle: textTheme.labelMedium,
    ),
    listTileTheme: ListTileThemeData(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      visualDensity: VisualDensity.comfortable,
      titleTextStyle: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
      subtitleTextStyle:
          textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant),
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
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
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      elevation: 0,
      backgroundColor: colorScheme.inverseSurface,
      contentTextStyle: textTheme.bodyMedium
          ?.copyWith(color: colorScheme.onInverseSurface),
    ),
    dialogTheme: DialogThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 0,
      backgroundColor: colorScheme.surface,
      titleTextStyle: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      contentTextStyle: textTheme.bodyMedium,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      showDragHandle: true,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(8)),
      ),
    ),
    searchBarTheme: SearchBarThemeData(
      elevation: WidgetStateProperty.all(0),
      backgroundColor: WidgetStateProperty.all(colorScheme.surface),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(
        side: BorderSide(color: colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(6),
      )),
      padding:
          WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 16)),
      hintStyle: WidgetStateProperty.all(
          textTheme.bodyLarge?.copyWith(color: colorScheme.onSurfaceVariant)),
    ),
    badgeTheme: BadgeThemeData(
      backgroundColor: colorScheme.error,
      textColor: colorScheme.onError,
      textStyle: textTheme.labelSmall?.copyWith(fontWeight: FontWeight.bold),
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: SegmentedButton.styleFrom(
        selectedBackgroundColor: colorScheme.secondaryContainer,
        selectedForegroundColor: colorScheme.onSecondaryContainer,
        side: BorderSide(color: colorScheme.outline),
      ),
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: colorScheme.inverseSurface.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(6),
      ),
      textStyle: textTheme.labelSmall
          ?.copyWith(color: colorScheme.onInverseSurface),
    ),
  );
}

ThemeData buildLightTheme({required String primaryColorHex}) {
  final seed = colorFromHex(primaryColorHex.isNotEmpty ? primaryColorHex : '#2E5395');
  final colorScheme = ColorScheme.fromSeed(
    seedColor: seed,
    brightness: Brightness.light,
    surface: const Color(0xFFF8F9FB),
    surfaceContainerLow: const Color(0xFFF2F4F6),
    surfaceContainer: const Color(0xFFEDEEF0),
    surfaceContainerHigh: const Color(0xFFE7E8EA),
    surfaceContainerHighest: const Color(0xFFE1E2E4),
    outlineVariant: const Color(0xFFE2E8F0),
  );
  return buildMaterialTheme(colorScheme, AppPalettes.light);
}

ThemeData buildDarkTheme({required String primaryColorHex}) {
  final seed = colorFromHex(primaryColorHex.isNotEmpty ? primaryColorHex : '#2E5395');
  final colorScheme = ColorScheme.fromSeed(
    seedColor: seed,
    brightness: Brightness.dark,
    surface: const Color(0xFF0F1115),
    surfaceContainerLow: const Color(0xFF15181C),
    surfaceContainer: const Color(0xFF1A1D23),
    outlineVariant: const Color(0xFF2E3132),
  );
  return buildMaterialTheme(colorScheme, AppPalettes.dark);
}
