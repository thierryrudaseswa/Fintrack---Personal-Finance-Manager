import 'package:flutter/material.dart';
import 'package:themeflutter/theme/MyAppColors.dart';

class MyAppThemes {
  static final lightTheme = ThemeData(
    primaryColor: MyAppColors.lightBlue,
    colorScheme: ColorScheme.light(
      primary: MyAppColors.lightBlue,
      secondary: MyAppColors.lightAccent,
      background: Colors.white,
      surface: Colors.white,
      onSurface: Colors.grey.shade700,
    ),
    brightness: Brightness.light,
  );

  static final darkTheme = ThemeData(
    primaryColor: MyAppColors.darkMode,
    colorScheme: ColorScheme.dark(
      primary: MyAppColors.darkMode,
      secondary: MyAppColors.darkAccent,
      background: MyAppColors.darkMode,
      surface: MyAppColors.darkMode,
      onSurface: MyAppColors.lightGray,
    ),
    brightness: Brightness.dark,
  );
}
