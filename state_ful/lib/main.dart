import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Stateful App',
    home: FavoriteCity(),
  ));
}

class FavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoriteCityState();
  }
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful App Example'),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              onChanged: (String userInput) {
                setState(() {
                  nameCity = userInput;
                });
              },
            ),
            Padding(
                padding: EdgeInsets.all(30.0),
                child: Text(
                  'You City name is: $nameCity',
                  style: TextStyle(fontSize: 30.0),
                )),
          ],
        ),
      ),
    );
  }
}
