import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  static String tag = 'menu-page';

  @override
  _MenuPage createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {

  @override
  Widget build(BuildContext context) {

    print("menu");
    final body = Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.red,
          Colors.lightBlueAccent,
        ]),
      ),
      child: ListView(
        children: <Widget>[],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}