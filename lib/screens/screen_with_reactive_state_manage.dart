import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/controller/count_controller_with_reactive.dart';

class ReactiveStateManage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(CountControllerWithReactive());
    return Scaffold(
      appBar: AppBar(
        title: Text("반응형 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
            단순 상태 관리 : GetBuilder 사용
            반응형 상태 관리 : GetBuilder 쓰지 않고 Obx 사용
            * Obx :
                따로 타입을 지정하지 않고
                컨트롤러에서 .obs로 선언한 옵저버블의 변화를 감지했을때 Obx에서 바로 update를 함
                옵저버블 변수는 .value 를 추가로 붙여줘야 실제 값을 참조할 수 있다.
                Obx(() => 위젯클래스)
                단, 필수로 Obx() 안의 위젯 클래스에선 옵저버블을 사용해야 한다. (아니면 에러 발생할 수 있음)
             */
            Obx(() => Text("${Get.find<CountControllerWithReactive>().count.value}", style: TextStyle(fontSize: 50))),
            IconButton(icon: Icon(Icons.add), onPressed: () => Get.find<CountControllerWithReactive>().increase()),
          ],
        ),
      ),
    );
  }
}