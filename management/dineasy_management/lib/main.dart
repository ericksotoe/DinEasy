import 'package:flutter/material.dart';
import 'package:dineasy_management/LoginPage.dart';
import 'package:dineasy_management/StatusPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final routes = <String, WidgetBuilder>{
      LoginPage.tag: (context) => LoginPage(),
      StatusPage.tag: (context) => StatusPage(),
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