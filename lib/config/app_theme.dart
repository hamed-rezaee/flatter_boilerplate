import 'package:flutter/material.dart';

const TextStyle appThemeFont = TextStyle(fontFamily: 'yekan');

class AppColors {
  // MAIN
  final Color _mainLightColor = const Color(0xFF232c33);
  final Color _mainDarkColor = const Color(0xFFFAFAFA);

  // SECONDARY
  final Color _secondLightColor = const Color(0xFF232c33);
  final Color _secondDarkColor = const Color(0xFF232c33);

  // ACCENT
  final Color _accentLightColor = const Color(0xFF87c694);
  final Color _accentDarkColor = const Color(0xFF9999aa);

  // SCAFFOLD
  final Color _scaffoldDarkColor = const Color(0xFF2C2C2C);
  final Color _scaffoldLightColor = const Color(0xFFFAFAFA);
}

// Theme helper
class AppTheme extends AppColors {
  Color mainColor({
    double opacity = 1,
    Brightness brightness = Brightness.light,
  }) =>
      brightness == Brightness.light
          ? _mainLightColor.withOpacity(opacity)
          : _mainDarkColor.withOpacity(opacity);

  Color secondColor({
    double opacity = 1,
    Brightness brightness = Brightness.light,
  }) =>
      brightness == Brightness.light
          ? _secondLightColor.withOpacity(opacity)
          : _secondDarkColor.withOpacity(opacity);

  Color accentColor({
    double opacity = 1,
    Brightness brightness = Brightness.light,
  }) =>
      brightness == Brightness.light
          ? _accentLightColor.withOpacity(opacity)
          : _accentDarkColor.withOpacity(opacity);

  Color scaffoldColor({
    double opacity = 1,
    Brightness brightness = Brightness.light,
  }) =>
      brightness == Brightness.light
          ? _scaffoldLightColor.withOpacity(opacity)
          : _scaffoldDarkColor.withOpacity(opacity);
}
