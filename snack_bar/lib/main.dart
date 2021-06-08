import 'package:flutter/material.dart';

void main() {
  runApp(SnackBarDemo());
}

class SnackBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snackbar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Snackbar Demo'),
        ),
        body: SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('I am Snackbar'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () => {},
            ),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
        child: Text('Button'),
        color: Colors.red,
      ),
    );
  }
}
