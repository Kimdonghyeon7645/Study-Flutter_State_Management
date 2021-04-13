import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/screens/srceen_second.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("첫 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text("앞으로 가기"),
              onPressed: () {
                // // 1. 일반적인 방식 : context를 넘겨줘야 되기에, 빌드 함수 밖에서 하려면 context를 넘겨줘야 한다.
                // Navigator.of(context).pop();

                // 2. GetX 방식
                Get.to(SecondPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
