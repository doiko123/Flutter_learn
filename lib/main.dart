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
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Doiko Home Page'),
      ),
      body: Center(
          child: ElevatedButton(
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
        // Navigator.of(context).pushNamed("/subpage"),
        child: const Text('Subページへ'),
        // onPressed: () {
        //   Scaffold.of(context)
        //       .showSnackBar(SnackBar(content: const Text("ゴゴゴゴゴゴ")));
        // },
        // child: Text('click here'),
      )),
    );
  }
}

class SubPage extends StatelessWidget {
  // SubPage({Key? key, required this.title}) : super(key: key);
  // final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: const Text('Flutter Doiko Sub Page'),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('戻る'),
        )));
  }
}
