import 'package:flutter/material.dart';

extension ThemeShortCuts on BuildContext {
  Color get primaryColor => Theme.of(this).primaryColor;
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// Common Text Styles for the App
  /// Body
  TextStyle? get bodySmall => textTheme.bodySmall;
  TextStyle? get body => textTheme.bodyMedium;
  TextStyle? get bodyBold => textTheme.bodyLarge;

  /// Title
  TextStyle? get titleSmall => textTheme.titleSmall;
  TextStyle? get title => textTheme.titleMedium;
  TextStyle? get titleBold => textTheme.titleLarge;

  /// Headline
  TextStyle? get headlineSmall => textTheme.headlineSmall;
  TextStyle? get headline => textTheme.headlineMedium;
  TextStyle? get headlineBold => textTheme.headlineLarge;

  /// Display
  TextStyle? get displaySmall => textTheme.displaySmall;
  TextStyle? get display => textTheme.displayMedium;
  TextStyle? get displayBold => textTheme.displayLarge;

  /// Label
  TextStyle? get labelSmall => textTheme.labelSmall;
  TextStyle? get label => textTheme.labelMedium;
  TextStyle? get labelBold => textTheme.labelLarge;
}
