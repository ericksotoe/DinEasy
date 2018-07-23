import 'package:flutter/material.dart';
import 'package:dineasy_management/LoginPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DinEasy Management',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}