import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstNamedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("첫 Named 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text("앞으로 가기"),
              onPressed: () {
                Get.offNamed("/second");
              },
            ),
          ],
        ),
      ),
    );
  }
}
