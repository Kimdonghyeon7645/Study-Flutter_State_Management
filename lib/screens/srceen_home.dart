import 'package:flutter/material.dart';
import 'package:todo_list/screens/srceen_first.dart';

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
            ElevatedButton(child: Text("일반적인 라우트"), onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_) => FirstPage()));
            }),
            // ElevatedButton(onPressed: () {}, child: Text("일반적인 라우트")),
            // ElevatedButton(onPressed: () {}, child: Text("일반적인 라우트")),
          ],
        ),
      ),
    );
  }
}
