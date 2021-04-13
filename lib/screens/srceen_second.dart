import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/screens/srceen_home.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("두번째 페이지"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              child: Text("뒤로 가기"),
              onPressed: () {
                // // 1. 일반적인 방식 : context를 넘겨줘야 되기에, 빌드 함수 밖에서 하려면 context를 넘겨줘야 한다.
                // Navigator.of(context).pop();

                // 2. GetX 방식
                Get.back();
              },
            ),
            OutlinedButton(
              child: Text("홈으로 가기"),
              onPressed: () {
                // // 1. 일반적인 방식
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(builder: (_) => HomePage()),
                //     (route) => false);

                // 2. GetX 방식
                // Get.to(HomePage());
                // -> 예전 페이지를 방문한 티스토리가 남고, 앱바 왼쪽에도 되돌아가기 버튼이 생기지만,
                Get.offAll(HomePage());
                // -> 예전 페이지를 방문한 티스토리가 없어지고, 되돌아가기 버튼도 없어져있다.
                // -> 한번 들어가고 두번다시 돌아갈 필요가 없는 경우 (ex. 회원가입 페이지) 사용
              },
            ),
          ],
        ),
      ),
    );
  }
}
