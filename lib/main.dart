import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/screens/named/srceen_first.dart';
import 'package:todo_list/screens/named/srceen_second.dart';
import 'package:todo_list/screens/srceen_home.dart';
import 'package:todo_list/screens/srceen_with_parameters.dart';
import 'package:todo_list/screens/srceen_with_argument.dart';

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
      initialRoute: "/",    // 네임드 라우팅 하기위한 속성 (getX 전에도 있었음)
      // // 1. 일반적인 방식
      // routes: {
      //   "/": (context) => HomePage(),
      //   "/first": (context) => FirstNamedPage(),
      //   "/second": (context) => SecondNamedPage()
      // },
      // 2. GetX 방식
      getPages: [
        GetPage(name: "/", page: () => HomePage(), transition: Transition.zoom),
        GetPage(name: "/first", page: () => FirstNamedPage(), transition: Transition.zoom),
        GetPage(name: "/second", page: () => SecondNamedPage(), transition: Transition.zoom),
        GetPage(name: "/next", page: () => NextPage()),
        GetPage(name: "/user/:guest", page: () => UserPage()),
      ],
      // 네임드 라우팅에서 Transition(페이지 넘길때의 애니매이션)은
      // GetPage() 의 속성으로 넣어줄 수 있다.
      // 참고로 getPages 수정시, hot reload 말고 hot restart 를 해야 반영이 된다.
    );
  }
}
