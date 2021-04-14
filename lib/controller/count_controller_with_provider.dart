import 'package:flutter/cupertino.dart';

class CountControllerWithProvider extends ChangeNotifier {
  int count = 0;    // 변수 초기화

  void increase() {
    count ++;
    notifyListeners();    // 변수 변경이 반영
  }
}