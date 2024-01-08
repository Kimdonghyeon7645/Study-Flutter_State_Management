import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/controllers/test_controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return GetMaterialApp(
      home: Scaffold(
        body: Center(
            child: Column(
          children: [
            GetBuilder<TestController>(
              builder: (ctr) => Text("${ctr.count}"),
            ),
          ],
        )),
      ),
    );
  }
}
