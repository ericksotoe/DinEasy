import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  static String tag = 'status-page';

  @override
  Widget build(BuildContext context) {

    // TODO: calculate this based on number of people waiting
    var waitTime = 10;

    // TODO: link this to database
    var groupWaiting = 5;

    final name = AppBar(
      title: Text("Ultra Menya", style: TextStyle(fontSize: 25.0),),
      automaticallyImplyLeading: false,
      centerTitle: true,
    );

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

    final statusNav = BottomNavigationBarItem(
      icon: Icon(Icons.history),
      title: Text("Status"),
    );

    final historyNav = BottomNavigationBarItem(
      icon: Icon(Icons.history),
      title: Text("History"),

    );

    final menuNav = BottomNavigationBarItem(
      icon: Icon(Icons.restaurant_menu),
      title: Text("Menu"),

    );

    final billNav = BottomNavigationBarItem(
      icon: Icon(Icons.monetization_on),
      title: Text("Bill"),

    );

    final navigationBar = BottomNavigationBar(
      currentIndex: 0,
      items: [historyNav, menuNav, billNav],
      onTap: (int index) => print(index),
    );

    // TODO: populate data from database
    var customers = new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Column(
        children: <Widget>[
          new CardLayout(
            icon: Icons.verified_user,
            name: "Mr. Soto",
            number: 5,
            type: "table",
            time: "09:00",
          ),
          new CardLayout(
            icon: Icons.verified_user,
            name: "Mr. Mui",
            number: 3,
            type: "bar",
            time: "21:00",
          ),
          new CardLayout(
            icon: Icons.verified_user,
            name: "Mr. Mui",
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
        children: <Widget>[name, title, number, estimateText, customers],
      ),
    );

    return Scaffold(
      body: body,
      bottomNavigationBar: navigationBar,
    );
  }
}

class CardLayout extends StatelessWidget {

  CardLayout({this.icon, this.name, this.number, this.type, this.time});

  final IconData icon;
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
              leading: new Icon(icon, size: 40.0, color: Colors.grey),
              title: new Text(name, style: new TextStyle(fontSize: 20.0),),
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