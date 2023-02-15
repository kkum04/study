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

enum Gender { MAN, WOMEN }

class _MyHomePageState extends State<MyHomePage> {
  Gender _gender = Gender.MAN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio /RadioListTile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListTile(
                title: const Text('남자'),
                leading: Radio(
                  value: Gender.MAN,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value ?? Gender.MAN;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('여자'),
                leading: Radio(
                  value: Gender.WOMEN,
                  groupValue: _gender,
                  onChanged: (value) {
                    setState(() {
                      _gender = value ?? Gender.WOMEN;
                    });
                  },
                ),
              ),
              const SizedBox(height: 40),
              RadioListTile(title: const Text('남자'), value: Gender.MAN, groupValue: _gender, onChanged: (value) {
                setState(() {
                  _gender = value ?? Gender.MAN;
                });
              }),
              RadioListTile(title: const Text('여자'), value: Gender.WOMEN, groupValue: _gender, onChanged: (value) {
                setState(() {
                  _gender = value ?? Gender.WOMEN;
                });
              })
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