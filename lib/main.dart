import 'package:flutter/material.dart';

import 'Screens/HomePage.dart';
import 'SplashScreen/Animation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.deepPurple,
      ),
      home: Stack(
        children: [
              HomePage(),
               IgnorePointer(
            child: AnimationScreen(
              color:Colors.deepPurple
            )
          )
        ],
      )
      
    );
  }
}


