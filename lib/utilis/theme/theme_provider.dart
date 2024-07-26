import 'package:crunchies/utilis/theme/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = danTheme.lightTheme;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }


  void toggleTheme() {
    if(_themeData == danTheme.lightTheme) {
      themeData = danTheme.darkTheme;
    } else {
      themeData = danTheme.lightTheme;
    }
  }
}