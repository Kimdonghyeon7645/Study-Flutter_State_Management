import 'package:get/get.dart';

class CountControllerWithReactive {   // 단순 상태 관리의 컨트롤러처럼 extends GetXController 를 붙일 필요가 없다.
  RxInt count = 0.obs;    // 옵저버블(Observable) 사용
  void increase() {
    count++;
  }
  void setNumber(int number) {
    // 단순형에선 count = 값 이였다면, 반응형에선 옵저버블이다 보니 count(값) 으로 한다.
    count(number);
  }
}