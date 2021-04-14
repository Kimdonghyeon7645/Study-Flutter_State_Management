import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/controller/count_controller_with_getx.dart';
import 'package:todo_list/controller/count_controller_with_provider.dart';
import 'package:todo_list/widgets/with_getx.dart';
import 'package:todo_list/widgets/with_provider.dart';

class SimpleStateManagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithGetX());
    // 컨트롤러 선언을 provider 와 다르게 어디서든지 가능!
    // WithProvider 클래스 안에서도 선언해줄 수 있고, 그 클래스의 builder 에서 선언해줘도 문제 없음!
    return Scaffold(
      appBar: AppBar(
        title: Text("단순 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ChangeNotifierProvider<CountControllerWithProvider>(
                create: (_) => CountControllerWithProvider(),
                child: WithProvider(),
              ),
            ),
            Expanded(child: WithGetX()),
          ],
        ),
      ),
    );
  }
}
