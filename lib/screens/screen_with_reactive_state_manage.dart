import 'package:flutter/material.dart';

class ReactiveStateManage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("반응형 상태 관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("0", style: TextStyle(fontSize: 50)),
            IconButton(icon: Icon(Icons.add), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
