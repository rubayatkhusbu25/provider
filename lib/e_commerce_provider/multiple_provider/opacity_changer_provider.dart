import 'package:flutter/material.dart';

class OpacityChangerProvider extends ChangeNotifier{

  double _value =1.0;
  double get value => _value;

  void change(double val){
    _value =val;
    notifyListeners();

  }

}