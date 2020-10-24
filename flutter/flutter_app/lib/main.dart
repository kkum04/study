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
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.tag_faces)),
                Tab(text: '메뉴2'),
                Tab(icon: Icon(Icons.info), text: '메뉴3')
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Container(color: Colors.yellow),
              Container(color: Colors.orange),
              Container(color: Colors.red)
            ],
          ),
        )
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   final items = List.generate(100, (i) => i).toList();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('제목')),
//         body: PageView(
//           children: <Widget>[
//             Container(
//               color: Colors.red,
//             ),
//             Container(
//               color: Colors.green,
//             ),
//             Container(
//               color: Colors.blue
//             )
//           ],
//         ));
//   }
// }
