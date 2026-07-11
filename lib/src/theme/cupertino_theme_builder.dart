import 'package:flutter/cupertino.dart';
import 'material_theme_builder.dart';

CupertinoThemeData buildCupertinoTheme({required String primaryColorHex}) {
  final seed = colorFromHex(primaryColorHex.isNotEmpty ? primaryColorHex : '#007AFF');

  return CupertinoThemeData(
    applyThemeToAll: true,
    primaryColor: seed,
    primaryContrastingColor: CupertinoColors.white,
    brightness: null,
    scaffoldBackgroundColor: CupertinoColors.systemBackground,
    barBackgroundColor: CupertinoColors.systemGrey6,
    textTheme: CupertinoTextThemeData(
      primaryColor: seed,
      textStyle: const TextStyle(fontSize: 17, letterSpacing: -0.41),
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
      pickerTextStyle: const TextStyle(fontSize: 21, letterSpacing: -0.41),
      dateTimePickerTextStyle:
          const TextStyle(fontSize: 21, letterSpacing: -0.41),
    ),
  );
}
