
import 'package:flutter/cupertino.dart';

class NumberList extends ChangeNotifier{

  List<int> numbers =[1,2,3,4];

  void add(){
    int last = numbers.last +1;
    numbers.add(last);
    notifyListeners();
  }

}