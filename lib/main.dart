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
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new MyHomePage(),
        '/subpage': (BuildContext context) => new SubPage()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(children: [
          const Icon(Icons.create),
          const Text('Flutter Doiko Home Page'),
        ],)
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SubPage();
                    },
                    fullscreenDialog: true,
                  ),
                );
              },
              child: const Text('Subページへ'),
            ),
            const Text('あああ'),
            const Text('いいい')
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {print("押したね？")},
        child: const Icon(Icons.timer)),
    );
  }
}

class SubPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Doiko Sub Page'),
      ),
      body: Container(
        height: 400.0,
        margin: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.pink,
            width: 8.0,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('戻る'),
            ),
            const Text('いってらっしゃい'),
            const Text('おなかすいた')
          ]
        )
      )
    );
  }
}
