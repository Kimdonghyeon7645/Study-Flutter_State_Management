import 'package:get/get.dart';

enum NUM { ONE, TWO }

class Post {
  String name, body;
  Post(this.name, this.body);
}

class CountControllerWithReactive extends GetxController {
  // 단순 상태 관리의 컨트롤러처럼 extends GetXController 를 붙일 필요가 없다.
  RxInt count = 0.obs; // 옵저버블(Observable) 사용

  // 옵저버블은 이전에 쓰던 모든 타입 그대로 사용할 수 있다.
  RxDouble _double = 0.0.obs;
  RxString _string = "".obs;
  // 열거(enum) 타입은 제네릭으로 타입명을 넣어 사용한다.
  Rx<NUM> _num = NUM.ONE.obs;
  // 클래스도 제네릭으로 클래스명을 넣어 사용한다.
  Rx<Post> post = Post("제목", "본문").obs;
  // 리스트도 동일하다. 주의할 점은 초깃값을 요소 타입에 맞게 설정하자.
  RxList<String> list = [""].obs;

  void increase() {
    count++;

    // 다양한 타입들의 수정 방법
    _double(1.0);
    _string("증가");
    _num(NUM.TWO);
    post(Post("새 제목", "새 본문"));
    post.update((_post) {   // 객체는 update 로 필드를 수정할 수 있다.
      _post.name = "새 제목";
    });
    // 리스트는 다양한 메소드로 요소를 수정할 수 있다.
    list.add("새 요소");
    list.addAll(["새", "요", "소"]);
    list.addIf(post.value.name == "새 제목", "조건에 맞을시 추가되는 요소");
  }

  void setNumber(int number) {
    // 단순형에선 count = 값 이였다면, 반응형에선 옵저버블이다 보니 count(값) 으로 한다.
    count(number);
  }

  /*
   반응형 상태 관리 장점 2.
   이벤트 트리거를 할 수 있다. (단순 상태 관리는 X)
   이벤트 트리거를 하기 위해선 extends GetXController 를 컨트롤러 클래스에 붙여줘야 한다.
   상속 받을시 이벤트의 라이프 사이클을 사용할 수 있다.
   onInit(), onClose(), onDelete() 가 있고 원하는 것만 오버라이드해서 사용하면 된다.
     (사실 위 메소드는 단순 상태 관리의 컨트롤러에서도 오버라이드할 수 있지만, 밑에 나오는 워커를 사용할 수 없다.
     워커의 인자로 RxInterface<dynamic> 을 받기 때문이다.)
   */

  @override
  void onInit() {
    /* 워커 (Worker)
     반응형 상태 관리에선 라이프 사이클의 함수(ex. onInit())에서 다양한 경우마다 처리할 콜백 함수를 지정할 수 있다.
     */
    final int second = 1;
    ever(count, (_) => print("매번 호출"));
    once(count, (_) => print("처음 한번만 호출"));
    debounce(count, (_) => print("마지막 변경이 끝나고 한번만 ($second초 후) 호출"),
        time: Duration(seconds: second));
    // debounce 는 검색창에 이용할 수 있다.
    // (검색값 입력 박스에 값이 바뀔때마다 서버에 요청을 날리면 과부화될 수 있으니, 검색값 입력이 끝나고 몇초뒤에 서버에 요청을 날리는 것이다)
    interval(count, (_) => print("변경되는 동안 ($second초 간격으로) 호출"),
        time: Duration(seconds: second));
    super.onInit();
  }
}
