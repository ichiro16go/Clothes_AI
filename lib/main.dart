import 'package:flutter/material.dart';
//page
import 'ui/recommendPage.dart';
import 'ui/calenderAndCordinatePage.dart';
import 'ui/closetPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //広告
            Container(
              width: double.infinity,
              height: screenSize.height * 0.2856,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black, // ボーダーの色
                  width: 1.0, // ボーダーの幅
                ),
              ),
              child: const Text(
                '広告系',
                textAlign: TextAlign.center,
              ),
            ),
            //recommend pageへ遷移
            Container(
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.1296,
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // 角を直角に設定
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RecommendPage()),
                  );
                },
                child: const Text(
                  'recommend',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //calender pageへと移動
            Container(
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.1296,
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // 角を直角に設定
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => CalenderAndCoordinatePage()),
                  );
                },
                child: const Text(
                  'calender',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            //closet pageへと移動
            Container(
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.1296,
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // 角を直角に設定
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ClosetPage()),
                  );
                },
                child: const Text(
                  'closet',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
