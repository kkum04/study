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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox / Radio / Switch"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                  value: _isChecked,
                  onChanged: (value) => setState(() => _isChecked = value ?? false)
              ),
              const SizedBox(height: 40),
              Switch(
                  value: _isChecked,
                  onChanged: (value) => setState(() => _isChecked = value)
              )
            ],
          )
        ),
      ),
    );
  }
}


// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Hello World"),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             children: const [
//               TextField(),
//               TextField(
//                 decoration: InputDecoration(labelText: '여기에 입력하세요.'),
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: '여기에 입력하세요'
//                 ),
//               )
//             ],
//           ),
//         ));
//   }
// }