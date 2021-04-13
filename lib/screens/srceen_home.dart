import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_list/screens/normal/srceen_first.dart';
import 'package:todo_list/screens/srceen_with_argument.dart';

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
                Get.to(FirstPage(), transition: Transition.zoom);
                // 일반적인 라우팅에서 Transition(페이지 넘길때의 애니매이션)은
                // Get.to() 등의 속성으로 넣어줄 수 있다.
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
            OutlinedButton(
              child: Text("Argument 전달하기"),
              onPressed: () {
                // Argument 는 일반적인 라우팅, Named 라우팅 방식에서 속성으로 넘겨줄 수 있다.
                // Get.to(NextPage(), arguments: "전달할 값");
                // Get.toNamed("/next", arguments: {"message": "Argument 는 다양한 타입이 가능합니다!"});
                Get.toNamed("/next", arguments: User(name: "멋쟁이맨", age: 22));
                // Argument 는 문자열뿐만 아니라, Map, 사용자가 만든 클래스 등, 다양한 타입을 사용할 수 있다.
              },
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User({this.name, this.age});
}
