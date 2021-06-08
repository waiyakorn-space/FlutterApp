import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: CheckBoxWidget(),
          ),
        ),
      ),
    );
  }
}

class CheckBoxWidget extends StatefulWidget {
  @override
  CheckBoxWidgetClass createState() => new CheckBoxWidgetClass();
}

class CheckBoxWidgetClass extends State {
  bool isChecked = false;
  String resultHoder = 'Checkbox is UnChecked';

  void toggleCheckbox(value) {
    if (!isChecked) {
      setState(() {
        isChecked = true;
        resultHoder = 'Checkbox is Checked';
      });
    } else {
      setState(() {
        isChecked = false;
        resultHoder = 'Checkbox is UnChecked';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isChecked,
            onChanged: (value) => {
              toggleCheckbox(value),
            },
            activeColor: Colors.green,
            checkColor: Colors.white,
            tristate: false,
          ),
        ),
        Text(
          '$resultHoder',
          style: TextStyle(fontSize: 22),
        )
      ],
    );
  }
}
