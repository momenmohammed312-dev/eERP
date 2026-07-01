import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Defines the full Material 3 typescale for the application.
///
/// Prefer accessing styles through [BuildContext] extensions:
/// ```dart
/// Text('Hello', style: context.textTheme.titleLarge);
/// ```
TextTheme buildTextTheme() {
  final baseArabic = GoogleFonts.ibmPlexSansArabicTextTheme();
  final baseInter = GoogleFonts.interTextTheme();

  return baseArabic.copyWith(
    // --- Display ---
    displayLarge: baseArabic.displayLarge?.copyWith(
      fontSize: 57,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.25,
    ),
    displayMedium: baseArabic.displayMedium?.copyWith(
      fontSize: 45,
      fontWeight: FontWeight.w400,
    ),
    displaySmall: baseArabic.displaySmall?.copyWith(
      fontSize: 36,
      fontWeight: FontWeight.w400,
    ),

    // --- Headline (Stitch rules: 24px and 20px headlines)
    headlineLarge: baseArabic.headlineLarge?.copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 1.33,
    ),
    headlineMedium: baseArabic.headlineMedium?.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      height: 1.4,
    ),
    headlineSmall: baseArabic.headlineSmall?.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),

    // --- Title ---
    titleLarge: baseArabic.titleLarge?.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    titleMedium: baseArabic.titleMedium?.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: baseArabic.titleSmall?.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),

    // --- Body ---
    bodyLarge: baseArabic.bodyLarge?.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
    ),
    bodyMedium: baseArabic.bodyMedium?.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.43,
    ),
    bodySmall: baseArabic.bodySmall?.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),

    // --- Label (Stitch rules: Inter for labels/numeric data)
    labelLarge: baseInter.labelLarge?.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
    ),
    labelMedium: baseInter.labelMedium?.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelSmall: baseInter.labelSmall?.copyWith(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
  );
}