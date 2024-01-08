import 'package:get/get.dart';

class SimpleController extends GetxController {
  int count = 0;

  void increment() {
    count++;
    update();
  }
}

class ReactiveController extends GetxController {
  RxInt count = 0.obs;
  RxString name = "가나".obs;

  void increment() {
    count++;
  }
}
