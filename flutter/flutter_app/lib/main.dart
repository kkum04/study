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
      home: FirstPage(),
      routes: {
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage()
      },
    );
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('FirstPage build()');

    return Scaffold(
      appBar: AppBar(
        title: Text('First')
      ),
      body: RaisedButton(
        child: Text('다음 페이지로'),
        onPressed: () async {
          final person = Person('홍길동', 20);

          final result = await Navigator.pushNamed(
            context,
            '/second'
          );

          print(result);
        },
      )
    );
  }
}

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print('SecondPage build()');

    return Scaffold(
        appBar: AppBar(
            title: Text('Second')
        ),
        body: RaisedButton(
          child: Text('이전 페이지로'),
          onPressed: () {
            Navigator.pop(context, 'ok');
          },
        )
    );
  }
}