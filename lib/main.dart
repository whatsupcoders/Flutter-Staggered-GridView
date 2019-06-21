import 'package:flutter/material.dart';
import 'homepage.dart';
import 'gridpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter Staggered Grid View Widget',
      theme: ThemeData(
        primaryColor: Color(0xffFF5722),
        //primaryColor: Color(0xffe91e63),
      ),
     // home: HomePage(),
    home: GridPage(),
    );
  }
}