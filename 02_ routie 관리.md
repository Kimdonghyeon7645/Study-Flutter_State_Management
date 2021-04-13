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
        GetPage(name: "페이지url", page: () => 페이지위젯()),
        GetPage(name: "페이지url", page: () => 페이지위젯()),
        GetPage(name: "페이지url", page: () => 페이지위젯()),
        ......
    ],
);
```
페이지 이름(url)과 실제 페이지 위젯 매핑 ```(이부분 수정시, hot restart 해야 반영됨!)```

```dart
Get.toNamed("페이지url");
```
페이지 이동하기

```dart
Get.offNamed("페이지url");
```
페이지 이동하기 (+ 현재 페이지 방문 기록 삭제)

```dart
Get.offAllNamed("페이지url");
```
페이지 이동하기 (+ 모든 페이지 방문 기록 삭제)


## 3. Transition (페이지 이동시 애니메이션) 넣기

```dart
// 일반적인 라우팅에서
Get.to(이동할페이지위젯(), transition: Transition.원하는타입);

// Named 라우팅에서
return GetMaterialApp(
    ......
    getPages: [
        GetPage(name: "페이지url", page: () => 페이지위젯(), transition: Transition.원하는타입),
        ......
    ],
);
```


## 4. 페이지 이동시 Arguments 전달

```dart
// 일반적인 라우팅에서
Get.to(이동할페이지위젯(), arguments: 전달할값);

// Named 라우팅에서
Get.toNamed("페이지url", arguments: 전달할값);

// 전달받은 곳에선,
Get.arguments   // 으로 참조해 사용
``` 


## 5. 페이지 이동시 페이지url에 Parameters 전달

```dart
// path parameter 설정
return GetMaterialApp(
    ......
    getPages: [
        GetPage(name: "페이지url/:파라미터이름", page: () => 페이지위젯()),
        ......
    ],
);
// path parameter 넘겨주기
Get.toNamed("페이지url/파라미터값");

// query parameter 넘겨주기 
Get.toNamed("페이지url?파라미터명1=파라미터값1&파라미터명2=파라미터값2");

// 전달받은 곳에선,
Get.parameters["파라미터명"]   // 으로 참조해 사용
``` 
