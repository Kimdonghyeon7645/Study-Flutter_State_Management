import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/screens/normal/srceen_first.dart';
import 'package:todo_list/screens/named/srceen_first.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("라우트 관리 홈"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text("일반적인 라우팅 방식"),
              onPressed: () {
                // 1. 원래 방식
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => FirstPage()));

                // 2. GetX 방식
                Get.to(FirstPage());
              },
            ),
            OutlinedButton(
              child: Text("Named 라우팅 방식"),
              onPressed: () {
                // 1. 원래 방식
                // Navigator.of(context).pushNamed("/first");

                // 2. GetX 방식
                Get.toNamed("/first");
              },
            ),
          ],
        ),
      ),
    );
  }
}
