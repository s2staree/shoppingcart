import 'package:flutter/material.dart';

// 1)
void main() {
  runApp(const MyApp());
}

// 2) 실행 클래스
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      // 싱글톤 패턴이 자동적용됨
      home: HomePage(),
    );
  }
}

// 3) 첫 페이지 (그림)
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // 구조
  @override
  Widget build(BuildContext context) {
    print("HomePage 실행됨");

    return Scaffold(

      body: Column(
        children: [

          DayComponent();

          Container(
            color: Colors.blue,
            height: 200,
            child: Text("밤"),
          ),
        ],
      ),
    );
  }
}

class DayComponent extends StatefulWidget {
  const DayComponent({Key? key}) : super(key: key);

  @override
  State<DayComponent> createState() => _DayComponentState();
}

class _DayComponentState extends State<DayComponent> {
  String upData = "낮";

  @override
  Widget build(BuildContext context) {

    print("DayComponent 실행됨");

    return Row(
      children: [

        ElevatedButton(
            onPressed: (){
              setState((){
                upData = "해";
              });
              print(upData);
            },
            child: Text("클릭")
        ),

        Container(
          color: Colors.yellow,
          height: 200,
          child: Text("${upData}"),
        ),
      ],
    );
  }
}
