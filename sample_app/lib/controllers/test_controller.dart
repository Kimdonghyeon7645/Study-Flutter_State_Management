import 'package:get/get.dart';

class TestController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }
}
