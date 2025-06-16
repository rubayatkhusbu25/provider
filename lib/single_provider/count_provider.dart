import 'package:flutter/cupertino.dart';

class CountProvider extends ChangeNotifier{

  int _count= 50;
  int get count  => _count;

  void increaseCount(){
    _count++;
    notifyListeners();
  }

}