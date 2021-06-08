import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField App'),
        ),
        body: Center(
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Enter your password: ',
              icon: Icon(Icons.lock),
            ),
            keyboardType: TextInputType.name,
            inputFormatters: [
              BlacklistingTextInputFormatter(RegExp('[0-9]')),
              LengthLimitingTextInputFormatter(12),
            ],
          ),
        ),
      ),
    );
  }
}
