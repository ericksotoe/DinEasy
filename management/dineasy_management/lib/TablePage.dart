import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  static String tag = 'bill-page';

  @override
  _TablePage createState() => _TablePage();
}

class _TablePage extends State<TablePage> {

  @override
  Widget build(BuildContext context) {

    print("bill");
    final body = Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.green,
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