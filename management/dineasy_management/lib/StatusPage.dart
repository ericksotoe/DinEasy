import 'package:flutter/material.dart';
import 'dart:math';

class StatusPage extends StatefulWidget {
  static String tag = 'status-page';

  @override
  _StatusPage createState() => _StatusPage();
}

class _StatusPage extends State<StatusPage> {

  @override
  Widget build(BuildContext context) {

    print("status");
    // TODO: calculate this based on number of people waiting
    var waitTime = 10;

    // TODO: link this to database
    var groupWaiting = 5;

    var colors = [Colors.blue, Colors.red, Colors.green, Colors.yellow,
    Colors.purple, Colors.grey, Colors.brown];
    var random = Random();

    final title = Padding(
      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Text("Group of People Waiting:",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 30.0),)
    );

    final number = Padding(
      padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      child: Text("$groupWaiting",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 80.0),)
    );

    final estimateText = Padding(
      padding: EdgeInsets.fromLTRB(30.0, 20.0, 100.0, 0.0),
      child: Text("Estimate wait time: $waitTime mins",
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 20.0),)
    );

    // TODO: populate data from database
    var customers = new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Column(
        children: <Widget>[
          new CardLayout(
            color: colors[random.nextInt(colors.length)],
            name: "Erick Soto",
            number: 5,
            type: "table",
            time: "09:00",
          ),
          new CardLayout(
            color: colors[random.nextInt(colors.length)],
            name: "Jasper Mui",
            number: 3,
            type: "bar",
            time: "21:00",
          ),
          new CardLayout(
            color: colors[random.nextInt(colors.length)],
            name: "Jasper Mui",
            number: 3,
            type: "bar",
            time: "21:00",
          ),
        ],
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: ListView(
        children: <Widget>[title, number, estimateText, customers],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}

class CardLayout extends StatelessWidget {

  CardLayout({this.color, this.name, this.number, this.type, this.time});

  final Color color;
  final String name;
  final int number;
  final String type;
  final String time;

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Card(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new ListTile(
              leading: CircleAvatar(
                backgroundColor: color,
                child: new Text(name[0], style: TextStyle(color: Colors.white, fontSize: 18.0),),
              ),
              title: Text(name, style: new TextStyle(fontSize: 20.0),),
              subtitle: Text('$number people reserved $type at $time'),
            ),
            new ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: new ButtonBar(
                children: <Widget>[
                  new FlatButton(
                    child: const Text('Come In'),
                    onPressed: () {
                      // TODO: filled in function for accepting customer
                    },
                  ),
                  new FlatButton(
                    child: const Text('Remove'),
                    onPressed: () {
                      // TODO: filled in function for accepting customer
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}