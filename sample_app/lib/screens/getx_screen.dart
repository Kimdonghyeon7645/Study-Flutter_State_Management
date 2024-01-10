import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/controllers/test_controller.dart';
import 'package:sample_app/themes/dark_theme.dart';
import 'package:sample_app/themes/light_theme.dart';

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

void showCustomSnackBar(message) {
  final textPainter = TextPainter(
    text: TextSpan(text: message, style: const TextStyle(fontSize: 14)),
    maxLines: 1,
    textDirection: TextDirection.ltr,
  )..layout(minWidth: 0, maxWidth: double.infinity);
  final textWidth = textPainter.width;

  Get.showSnackbar(
    GetSnackBar(
      message: message,
      duration: const Duration(milliseconds: 3500),
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

class GetXScreen extends StatelessWidget {
  const GetXScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ReactiveController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(Get.isDarkMode ? "다크모드" : "기본모드"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.1,
            ),
            // GetX<ReactiveController>(builder: (_) => Text("${_.count.value}")),
            // OutlinedButton(onPressed: () => showCustomSnackBar("토스트 메시지 예시"), child: Text("팝업")),
            OutlinedButton(
              onPressed: () {
                Get.changeTheme(Get.isDarkMode ? lightTheme : darkTheme);
                // Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
              },
              child: Text("전환"),
            ),
            OutlinedButton(
              onPressed: () {
                Get.changeTheme(darkTheme);
                // Get.changeThemeMode(ThemeMode.dark);
              },
              child: Text("다크모드"),
            ),
          ],
        ),
      ),
    );
  }
}
