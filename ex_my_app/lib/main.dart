import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String name = 'Waiyakorn';
  int i = 10;
  String j = "50";

  Widget build(BuildContext context) {
    int result = i + int.parse(j);
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        canvasColor: Colors.red.shade100,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("MY APP $name " + result.toString()),
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white,
            ),
            tooltip: 'Menu',
            onPressed: null,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              tooltip: 'Search Data',
              onPressed: null,
            )
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text("Hello world"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.thumb_up),
          tooltip: 'Menu',
          onPressed: () => {},
        ),
      ),
    );
  }
}
