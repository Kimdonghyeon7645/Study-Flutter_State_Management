import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/screens/srceen_home.dart';

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("parameters 를 받은 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // Get.parameters 로, 페이지 이동시 넘겨준 parameters 를 사용할 수 있다.
                "${Get.parameters['guest']}\n"
                    "${Get.parameters['name']}\n"
                    "${Get.parameters['age']}",
            ),
            OutlinedButton(
              child: Text("홈으로 가기"),
              onPressed: () {
                Get.offNamed("/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
