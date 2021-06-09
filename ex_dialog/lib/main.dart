import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Alert());
  }
}

class Simple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future _showIt() async {
      switch (await showDialog(
          context: context,
          builder: (BuildContext inContext) {
            return SimpleDialog(
              title: Text('Are you sure?'),
              children: [
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(inContext, 'Yes');
                  },
                  child: Text('Yes'),
                ),
                SimpleDialogOption(
                  onPressed: () {
                    Navigator.pop(inContext, 'No');
                  },
                  child: Text('No'),
                )
              ],
            );
          })) {
        case 'Yes':
          print('Yes option');
          break;
        case 'No':
          print('No option');
          break;
      }
    }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Show Dialog'),
          onPressed: _showIt,
        ),
      ),
    );
  }
}

class Alert extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future _alertIt() async {
      await showDialog(
        context: context,
        builder: (BuildContext inContext) {
          return AlertDialog(
            title: Text('Welcome to my world'),
            content: Center(
              child: Text('Course Flutter App'),
            ),
            actions: [
              TextButton(
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        },
      );
    }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert'),
          onPressed: _alertIt,
        ),
      ),
    );
  }
}
