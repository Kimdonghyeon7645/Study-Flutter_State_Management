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
            Obx(() {
              print("업데이트!");
              /*
               반응형 상태 관리 장점 1.
               값이 변경되지 않으면 함수를 호출하지 않는다.
               ex. 이미 값이 5인데 5로 변경하는 함수를 호출할 경우,
               GetBuilder(단순 상태 관리)에선 새로 리로드되지만, Obx(반응형 상태 관리)에선 리로드되지 않는다.
               이 점을 잘 이용한다면 단순 상태 관리에서보다 리소스를 아낄 수 있다.
               */
              return Text(
                  "${Get.find<CountControllerWithReactive>().count.value}",
                  style: TextStyle(fontSize: 50));
            }),
            /*
             Obx(() => 위젯) 말고도 GetX(builder: (_) => 위젯) 을 쓸 수 있다. (근데 코드 길어져서 Obx가 편하긴 하다)
             * 참고 :
                이전 버전에서는 builder는 위젯으로 취급하지 않았으나, 최근 버전부턴 위젯으로 인식하고 있다고 한다.
                이 때문에 현재 GetX()를 사용하는 방식은 에러가 난다...
             */
            // GetX(builder: (CountControllerWithReactive controller) {
            //   return Text("${controller.count.value}", style: TextStyle(fontSize: 50));
            // }),
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () =>
                    Get.find<CountControllerWithReactive>().increase()),
            TextButton(
                child: Text("5로 변경"),
                onPressed: () =>
                    Get.find<CountControllerWithReactive>().setNumber(5)),
          ],
        ),
      ),
    );
  }
}
