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
      home: const MyHomePage(),
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
// enum Gender { MAN, WOMEN }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final _valueList = ['첫 번째', '두 번째', '세 번째'];
//   var _selectedValue = '첫 번째';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Radio /RadioListTile"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: DropdownButton(
//             value: _selectedValue,
//             items: _valueList.map((e) {
//               return DropdownMenuItem(
//                 value: e,
//                 child: Text(e),
//               );
//             }).toList(),
//             onChanged: (value) => {setState(() { _selectedValue = value ?? '첫 번째'; })},
//           ),
//         ),
//       ),
//     );
//   }
// }

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Hello World"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: TextButton(
                child: const Text('버튼'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('제목'),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: const [
                                Text('Alert Dialog입니다.'),
                                Text('OK를 눌러 닫습니다.')
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancel'),
                            )
                          ],
                        );
                      });
                },
              ),
            )));
  }
}
