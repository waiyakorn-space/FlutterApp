import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stateless App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless App Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.lightGreen),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Hello 1'),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.lightBlue),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Hello 2'),
                ),
              ),
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Hello 3'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
