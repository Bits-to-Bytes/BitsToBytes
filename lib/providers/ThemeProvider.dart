import 'package:bitstobytes/helpers/theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _currentTheme = darkTheme;
  bool _isDarkTheme = false;

  ThemeData get currentTheme => _currentTheme;
  bool get isDarkTheme => _isDarkTheme;

  void changeTheme() {
    if (_isDarkTheme) {
      _currentTheme = lightTheme;
      _isDarkTheme = false;
    } else {
      _currentTheme = darkTheme;
      _isDarkTheme = true;
    }
    notifyListeners();
  }
}
