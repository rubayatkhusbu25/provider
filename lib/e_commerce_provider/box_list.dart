import 'package:flutter/material.dart';

class BoxList extends ChangeNotifier{

  List<int> boxes = [];

  void add(){
    boxes.add(boxes.length);

  }
}