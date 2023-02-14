import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('제목'),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(Icons.event),
              title: const Text('Event'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(Icons.camera),
              title: const Text('Camera'),
              trailing: const Icon(Icons.navigate_next),
              onTap: () => {},
            )
          ],
        )
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   var _text = 'Hello';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Hello World"),
//       ),
//       body: Text(
//         _text,
//         style: const TextStyle(fontSize: 40)
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => setState(() => _text = 'World'),
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
