import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/controllers/test_controller.dart';

String repeatString(String input, int count) {
  if (count <= 0) {
    return ''; // 0 이하의 숫자가 주어지면 빈 문자열 반환
  }

  StringBuffer result = StringBuffer();
  for (int i = 0; i < count; i++) {
    result.write(input);
  }

  return result.toString();
}

void showSnackBarBox({message}) {
  for (int i = 1; i < 20; i++) {
    final msg = repeatString("옹", i);

    final textPainter = TextPainter(
      text: TextSpan(
        text: msg,
        style: const TextStyle(fontSize: 14),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    final textWidth = textPainter.width;

    Get.showSnackbar(
      GetSnackBar(
        message: msg,
        duration: const Duration(milliseconds: 1500),
        animationDuration: const Duration(milliseconds: 600),
        backgroundColor: Colors.black.withOpacity(0.6),
        borderRadius: 30,
        padding: EdgeInsets.symmetric(
          horizontal: Get.width * 0.05,
          vertical: Get.height * 0.0135,
        ),
        margin: EdgeInsets.symmetric(
          horizontal: (Get.width - textWidth - Get.width * 0.1) / 2,
          vertical: Get.height * 0.02,
        ),
      ),
    );
  }
}

class GetXScreen extends StatelessWidget {
  const GetXScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ReactiveController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: Get.height * 0.1,
              ),
              GetX<ReactiveController>(builder: (_) => Text("${_.count.value}")),
              // Obx(() => Text(Get.find<ReactiveController>().name.value)),
              // OutlinedButton(onPressed: Get.find<ReactiveController>().increment, child: const Text("증가")),
              OutlinedButton(
                onPressed: () => Get.showSnackbar(const GetSnackBar(
                  title: "Hi",
                  message: "i am a GetSnackBar",
                  duration: Duration(milliseconds: 3500),
                )),
                child: const Text("팝업"),
              )
              // OutlinedButton(onPressed: () => showSnackBarBox(message: "팝업"), child: Text("팝업"))
            ],
          ),
        ),
      ),
    );
  }
}
