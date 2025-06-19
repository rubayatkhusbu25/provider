import 'package:flutter/cupertino.dart';

class FavProvider extends ChangeNotifier{
  List<int> selectedItems =[];

  void favAdd(int index){
    if(selectedItems.contains(index)){
      selectedItems.remove(index);
    }else{
      selectedItems.add(index);


    }
    notifyListeners();
  }

  void favRemove(int index){
   selectedItems.removeAt(index);
   notifyListeners();
  }

}