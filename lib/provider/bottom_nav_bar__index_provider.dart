import 'package:flutter/material.dart';

class BottomNavBarIndexProvider with ChangeNotifier {
  int index = 0;
  changeIndex(int value) {
    index = value;
    notifyListeners();
  }
}
