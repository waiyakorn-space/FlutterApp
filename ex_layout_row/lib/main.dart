import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Playgroud!'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Text('Sale'),
              Divider(),
              Text('Stock'),
              Divider(),
              Text('Setting'),
            ],
          ),
        ),
        body: Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('text1'),
                Divider(),
                Text('text2'),
                Divider(),
                Text('text3'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
