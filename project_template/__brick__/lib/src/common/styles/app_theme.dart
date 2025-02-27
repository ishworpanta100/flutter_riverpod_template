import 'package:flutter/material.dart';

import 'app_color_scheme.dart';

class AppTheme {
  /// Common
  static Color caption = const Color(0xFF7D7873);
  static Color body = const Color(0xFF514F4D);
  static Color greyStrong = const Color(0xFF272625);
  static Color greyMedium = const Color(0xFF9D9995);
  static Color white = Colors.white;
  static Color black = const Color(0xFF1E1B18);
  static Color red = Colors.red;
  static Color appPrimaryColor = Colors.blue;

  static ThemeData darkTheme = ThemeData.dark(useMaterial3: true).copyWith(
    colorScheme: darkColorScheme,
  );
  static ThemeData lightTheme = ThemeData.light(useMaterial3: true).copyWith(colorScheme: lightColorScheme);

  /// Theme
  static ThemeMode getCurrentThemeMode({bool isSystemThemeMode = true, bool isLightTheme = false}) {
    if (isSystemThemeMode) {
      return ThemeMode.system;
    } else {
      return isLightTheme ? ThemeMode.light : ThemeMode.dark;
    }
  }
}
