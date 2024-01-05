# GetX 알아보기!

![getX](https://raw.githubusercontent.com/jonataslaw/getx-community/master/get.png)

현재 패키지 1등인데는 다 이유가 있다.  
상태 관리 말고도 수십개의 기능을 지원하기에, 거의 미니 프레임워크라고 불릴 정도다!  
이러한 GetX를 익혀보자!

## 셋팅

[pub.dev > getX 페이지](https://pub.dev/packages/get) 에서, **Installing** 에서 하란데로 한다.

```yaml
# pubspec.yaml 에서 아래의 dependencies 에, 'get:' 을 추가한다.
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^1.0.2
  get:    # 추가된 부분
``` 

그리고 실제 코드에서 ```MaterialApp()``` 대신, **GetMaterialApp()** 을 사용하면 된다!  
(빨간 밑줄이 그어지면, [alt + enter] 로, **import 'package:get/get.dart';** 임포트 문을 자동 추가) 


## getX의 기능 활용

1. [route(페이지 이동) 관리](https://github.com/Kimdonghyeon7645/TodoList-with-getX/blob/master/02_%20route%20%EA%B4%80%EB%A6%AC.md)
2. [단순 상태 관리](https://github.com/Kimdonghyeon7645/TodoList-with-getX/blob/master/03_%20%EB%8B%A8%EC%88%9C%20%EC%83%81%ED%83%9C%20%EA%B4%80%EB%A6%AC.md)

## 참고

- [개발하는 남자 - getX 편](https://www.youtube.com/watch?v=RIR8W5kSfNE) 
