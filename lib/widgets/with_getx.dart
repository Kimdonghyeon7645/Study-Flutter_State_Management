import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/controller/count_controller_with_getx.dart';

class WithGetX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("GetX (id:first)", style: TextStyle(fontSize: 25)),
          GetBuilder<CountControllerWithGetX>(
            id: "first",
            builder: (controller) => Text("${controller.count}", style: TextStyle(fontSize: 50)),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Get.find<CountControllerWithGetX>().increase("first");
              // 상태 변경시에 context 인자가 없어서 코드를 따로 분리하기 쉽다!
            },
          ),

          Text("GetX (id:second)", style: TextStyle(fontSize: 25)),
          GetBuilder<CountControllerWithGetX>(
            id: "second",
            builder: (controller) => Text("${controller.count}", style: TextStyle(fontSize: 50)),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Get.find<CountControllerWithGetX>().increase("second");
            },
          ),
        ],
      ),
    );
  }
}
