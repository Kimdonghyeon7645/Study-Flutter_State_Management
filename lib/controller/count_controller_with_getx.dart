import 'package:get/get.dart';

class CountControllerWithGetX extends GetxController {
  int count = 0;    // 변수 초기화

  void increase(id) {
    count ++;
    update([id]);   // 변수 업데이트 반영
  }
}