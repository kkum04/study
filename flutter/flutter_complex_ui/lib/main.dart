import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final dummyItems = [
  'https://cdn.crowdpic.net/detail-thumb/thumb_d_674D951DDDB98EC41975B64FB9F83018.jpg',
  'https://www.inews365.com/data/photos/201410/pp_364121_1_1413435184.jpg',
  'https://rimage.gnst.jp/livejapan.com/public/article/detail/a/20/00/a2000246/img/basic/a2000246_main.jpg?20200721104029&q=80'
];

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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.white,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _index = 0;
  var _pages = [Page1(), Page2(), Page3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('복잡한 UI'),
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      body: Center(child: _pages[_index]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: '이용서비스',
            icon: Icon(Icons.assessment),
          ),
          BottomNavigationBarItem(
            label: '내 정보',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [_buildTop(), _buildMiddle(), _buildBottom()],
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  print('클릭');
                },
                child: Column(
                  children: [
                    Icon(Icons.local_taxi, size: 40),
                    Text('택시'),
                  ],
                ),
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40),
                  Text('블랙'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40),
                  Text('바이크'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40),
                  Text('대리'),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40),
                  Text('택시'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40),
                  Text('블랙'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.local_taxi, size: 40),
                  Text('바이크'),
                ],
              ),
              Opacity(
                opacity: 0.0,
                child: Column(
                  children: [
                    Icon(Icons.local_taxi, size: 40),
                    Text('대리'),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMiddle() {
    return CarouselSlider(
      height: 150,
      autoPlay: true,
      items: dummyItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(url, fit: BoxFit.cover),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildBottom() {
    final items = List.generate(
        10,
        (i) => ListTile(
              leading: Icon(Icons.notifications_none),
              title: Text('[이벤트] 이것은 공지사항입니다.'),
            ));

    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '이용 서비스',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '내 정보',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}
