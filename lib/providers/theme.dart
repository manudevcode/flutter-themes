import 'package:flutter/material.dart';
import 'package:theming_provider/models/theme_preferences.dart';

class ThemeProvider with ChangeNotifier {
  ThemePreference themePreference = ThemePreference();
  String _theme = ThemePreference.LIGHT;

  String get theme => _theme;

  set setTheme(String theme) {
    _theme = theme;
    themePreference.setModeTheme(theme);
    notifyListeners();
  }

  bool isDarkTheme () => _theme == ThemePreference.DARK;

}