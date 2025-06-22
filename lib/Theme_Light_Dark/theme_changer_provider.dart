import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemeChangerProvider with ChangeNotifier{

  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode=> _themeMode;

  void setTheme(themeMode){
    _themeMode =themeMode;
    notifyListeners();
  }


}