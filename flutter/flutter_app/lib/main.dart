import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}
// 여기까지는 공통코드

// 여기서부터 수정
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = List.generate(100, (i) => i).toList();
  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('제목')
        ),
        body: ListView(
          children: [
            TextField(),
            TextField(
              decoration: InputDecoration(
                labelText: '여기에 입력하세요.'
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '여기에 입력하세요.'
              ),
            ),
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value;
                });
              }
            ),
            Switch(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value;
                  });
                }
            )
          ],
        )
    );
  }
}