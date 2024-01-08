import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/screens/getx_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/getx",
      getPages: [
        GetPage(name: '/getx', page: () => const GetXScreen()),
      ],
    );
  }
}
