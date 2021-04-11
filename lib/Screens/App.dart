
import 'package:flutter/material.dart';

import 'CustomeDrawer.dart/Screen1.dart';
import 'CustomeDrawer.dart/Screen2.dart';
import 'CustomeDrawer.dart/Screen3.dart';
import 'HomePage.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FirstLayer(),
          SecondLayer(),
          ThirdLayer(),
          HomePage(),
        ],
      ),
    );
  }
}