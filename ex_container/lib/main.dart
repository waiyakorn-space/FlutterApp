import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            height: 100.0,
            width: 300.0,
            child: RaisedButton(
              color: Colors.blue,
              child: Text('Button'),
              onPressed: () => {
                print('onClick Button'),
              },
            ),
          ),
        ),
      ),
    );
  }
}
