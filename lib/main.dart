import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:jobpair/jobs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'JobPair',
      theme: ThemeData(
      ),
      home: MyHomePage(title: 'JobPair'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;

  final tabs = [
    Jobs(),
    Center(child: Text('Profile')),
    Center(child: Text('About'))
  ];

  @override
  Widget build(BuildContext context) {

    CardController controller;
    const mainColor = const Color(0xFF3CA019);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: new TextSpan(
              style: new TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            children: <TextSpan>[
              new TextSpan(text: 'Job'),
              new TextSpan(text: 'Pair', style: new TextStyle(color: mainColor)),
            ]
          ),),
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: mainColor,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_active,
              color: mainColor,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body:tabs[_currentIndex],
      backgroundColor:  Color(0xFFF3F6FA),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Color(0xFF3CA019),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.business_center),
                label: "Jobs",
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
                backgroundColor: Colors.blue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: "About",
                backgroundColor: Colors.blue
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          }
      ),
    );
  }
}
