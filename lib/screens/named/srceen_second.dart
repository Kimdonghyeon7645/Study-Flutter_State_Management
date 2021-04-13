import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondNamedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("두번째 Named 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text("뒤로 가기"),
              onPressed: () {
                Get.offNamed("/first");
              },
            ),
            OutlinedButton(
              child: Text("홈으로 가기"),
              onPressed: () {
                Get.offAllNamed("/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
