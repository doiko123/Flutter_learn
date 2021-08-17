import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '/subpage.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _type = "偶数";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        children: <Widget>[
          const Icon(Icons.create),
          const Text('Flutter Doiko Home Page'),
        ],
      )),
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
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
              IconButton(
                icon: Icon(Icons.open_in_browser),
                  onPressed: () async {
                    String url = Uri.encodeFull("https://doikomeshi.com");
                    if (await canLaunch(url)) {
                      await launch(url);
                    }
              }),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'increment',
        child: const Icon(Icons.add)
      ),
    );
  }
}