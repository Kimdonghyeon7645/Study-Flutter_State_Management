import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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

  @override
  void onInit() {
    ever(count, (_) => print("매번 변경 때마다 호출 (변경된 상태값 : $_)"));
    once(count, (_) => print("최초 변경 때만 호출 (변경된 상태값 : $_)"));
    debounce(count, (_) => print("변경 후 n초간 변경이 없을때 호출 (변경된 상태값 : $_)"),
        time: const Duration(seconds: 2));
    interval(count, (_) => print("변경되는 동안 n초 간격으로 호출 (변경된 상태값 : $_)"), time: Duration(seconds: 2));
    super.onInit();
  }

  void increment() {
    count++;
  }
}
