import 'package:flutter/material.dart';

class BillPage extends StatefulWidget {
  static String tag = 'bill-page';

  @override
  _BillPage createState() => _BillPage();
}

class _BillPage extends State<BillPage> {

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