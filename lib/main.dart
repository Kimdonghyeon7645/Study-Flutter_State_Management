import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/screens/named/srceen_first.dart';
import 'package:todo_list/screens/named/srceen_second.dart';
import 'package:todo_list/screens/srceen_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: HomePage(),
      initialRoute: "/",    // 네이밍 라우팅 하기위한 속성 (getX 전에도 있었음)
      // 1. 일반적인 방식
      routes: {
        "/": (context) => HomePage(),
        "/first": (context) => FirstNamedPage(),
        "/second": (context) => SecondNamedPage()
      },
      // 2. GetX 방식
      getPages: [
        GetPage(name: "/", page: () => HomePage()),
        GetPage(name: "/first", page: () => FirstNamedPage()),
        GetPage(name: "/second", page: () => SecondNamedPage()),
      ],
    );
  }
}
