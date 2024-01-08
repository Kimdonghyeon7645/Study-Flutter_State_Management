import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/controllers/test_controller.dart';

class GetXScreen extends StatelessWidget {
  const GetXScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ReactiveController());
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // GetX<ReactiveController>(builder: (_) => Text("${_.count.value}")),
            Obx(() => Text(Get.find<ReactiveController>().name.value)),
            OutlinedButton(
                onPressed: Get.find<ReactiveController>().increment, child: const Text("증가"))
          ],
        ),
      ),
    );
  }
}
