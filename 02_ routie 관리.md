# GetX의 route 관리

## 1. 일반적인 라우팅

```dart
Get.to(이동할페이지위젯());
``` 
페이지 이동하기

```dart
Get.back();
```
페이지 뒤로가기

```dart
Get.off(이동할페이지위젯());
```
페이지 이동하기 (+ 현재 페이지 방문 기록 삭제)


```dart
Get.offAll(이동할페이지위젯());
```
페이지 이동하기 (+ 모든 페이지 방문 기록 삭제)


## 2. Named 라우팅

```dart
return GetMaterialApp(
    ......
    initialRoute: "/",    // 맨 처음 페이지 위치     
    getPages: [
        GetPage(name: "/", page: () => HomePage(), transition: Transition.zoom),
        GetPage(name: "/first", page: () => FirstNamedPage(), transition: Transition.zoom),
        GetPage(name: "/second", page: () => SecondNamedPage(), transition: Transition.zoom),
        GetPage(name: "/next", page: () => NextPage()),
        GetPage(name: "/user/:guest", page: () => UserPage()),
    ],
);
```
페이지 이름(url)과 실제 페이지 위젯 매핑 ```(이부분 수정시, hot restart 해야 반영됨!)```

```dart
Get.toNamed("페이지 이름");
```
페이지 이동하기

```dart
Get.offNamed("페이지 이름");
```
페이지 이동하기 (+ 현재 페이지 방문 기록 삭제)

```dart
Get.offAllNamed("페이지 이름");
```
페이지 이동하기 (+ 모든 페이지 방문 기록 삭제)

