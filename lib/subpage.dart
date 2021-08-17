import 'package:flutter/material.dart';

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
