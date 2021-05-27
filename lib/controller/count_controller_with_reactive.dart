import 'package:get/get.dart';

class CountControllerWithReactive {   // 단순 상태 관리의 컨트롤러처럼 extends GetXController 를 붙일 필요가 없다.
  RxInt count = 0.obs;    // 옵저버블(Observable) 사용
  void increase() {
    count++;
  }
}