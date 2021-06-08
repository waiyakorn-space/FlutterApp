import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(207, 31, 68, 1),
        accentColor: Colors.cyan[600],
      ),
      title: 'Flutter App',
      home: MyStateFulWidget(),
    );
  }
}

class MyStateFulWidget extends StatefulWidget {
  @override
  _MyStateFulWidget createState() => _MyStateFulWidget();
}

class _MyStateFulWidget extends State<MyStateFulWidget> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const List<Widget> _widgetOption = <Widget>[
    Text(
      'Page 0: Home',
      style: optionStyle,
    ),
    Text(
      'Page 1: List',
      style: optionStyle,
    ),
    Text(
      'Page 2: Purchase',
      style: optionStyle,
    ),
    Text(
      'Page 3: Account',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet_outlined),
            label: 'Purchase',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(207, 31, 68, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
