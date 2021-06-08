import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromRGBO(207, 31, 68, 1),
        accentColor: Colors.cyan[600],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  print("Home page5");
                },
                child: Container(
                  child: ClipRRect(
                    child: Image.asset(
                      'images/icon-left.png',
                      height: 80.0,
                      width: 80.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          actions: <Widget>[
            SafeArea(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                    width: 150,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.only(
                          top: 8.0,
                          left: 10.0,
                        ),
                        hintText: 'กินอะไรดี...',
                        hintStyle: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.search),
                          padding: EdgeInsets.only(top: 1.0),
                          onPressed: () {},
                        ),
                        border: new OutlineInputBorder(
                          borderSide: new BorderSide(
                            color: Colors.teal,
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.list_alt_outlined,
                size: 30.0,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                size: 30.0,
              ),
              // padding: EdgeInsets.only(left: 15.0),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.qr_code_scanner_outlined,
                size: 30.0,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Image.asset('images/icon-left.png'),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
    );
  }
}
