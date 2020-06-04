import 'package:flutter/material.dart';
import 'package:instagram/insta_home.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme : new ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color:Colors.black),
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black, fontFamily: 'DancingScript')),
        textTheme: TextTheme(title: TextStyle(color: Colors.black))),
home: InstaHome(),
    );
  }
}