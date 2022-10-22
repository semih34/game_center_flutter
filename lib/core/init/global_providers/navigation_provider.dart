import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier {
  int currentPosition = 0;

  changePosition(int position) {
    currentPosition = position;
    notifyListeners();
  }
}
