import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample_app/screens/getx_screen.dart';
import 'package:sample_app/themes/dark_theme.dart';
import 'package:sample_app/themes/light_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: "/getx",
      getPages: [
        GetPage(name: '/getx', page: () => const GetXScreen()),
      ],
    );
  }
}
