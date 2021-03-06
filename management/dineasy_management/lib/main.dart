import 'package:flutter/material.dart';
import 'package:dineasy_management/LoginPage.dart';
import 'package:dineasy_management/HomePage.dart';
import 'package:dineasy_management/MenuPage.dart';
import 'package:dineasy_management/TablePage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final routes = <String, WidgetBuilder>{
      LoginPage.tag: (context) => LoginPage(),
      HomePage.tag: (context) => HomePage(),
      MenuPage.tag: (context) => MenuPage(),
      TablePage.tag: (context) => TablePage(),
    };

    return MaterialApp(
      title: 'DinEasy Management',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}