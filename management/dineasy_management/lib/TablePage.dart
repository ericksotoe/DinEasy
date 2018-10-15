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
      margin: EdgeInsets.all(20.0),
      decoration:
          new BoxDecoration(border: new Border.all(color: Colors.black)),
      child: ListView(
        children: <Widget>[
          FlatButton(
              padding: EdgeInsets.all(0.0),
              onPressed: () => print("on press"),
              child: TableCard(1, "Mr. Erick Soto",
                  ["Peking Duck", "Dragon Roll", "Takoyaki"])),
          TableCard(
              1, "Mr. Erick Soto", ["Peking Duck", "Dragon Roll", "Takoyaki"]),
          TableCard(
              1, "Mr. Erick Soto", ["Peking Duck", "Dragon Roll", "Takoyaki"]),
          TableCard(
              1, "Mr. Erick Soto", ["Peking Duck", "Dragon Roll", "Takoyaki"]),
          TableCard(
              1, "Mr. Erick Soto", ["Peking Duck", "Dragon Roll", "Takoyaki"]),
          TableCard(
              1, "Mr. Erick Soto", ["Peking Duck", "Dragon Roll", "Takoyaki"]),
          TableCard(
              1, "Mr. Erick Soto", ["Peking Duck", "Dragon Roll", "Takoyaki"]),
        ],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}

class TableCard extends StatelessWidget {
  var tableNumber;
  var customerName;
  var dishesList;

  TableCard(this.tableNumber, this.customerName, this.dishesList);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(tableNumber.toString(),
                        style: TextStyle(color: Colors.black, fontSize: 18.0))),
                title: Text(customerName, style: TextStyle(fontSize: 20.0))
                // TODO: might want to put something in subtitle?
                ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 15.0),
              height: 80.0,
              child: ListView(
                children: <Widget>[
                  const Text('Peking Duck'),
                  const Text('Dragon Roll'),
                  const Text('Takoyaki'),
                  const Text('Takoyaki'),
                  const Text('Takoyaki'),
                  const Text('Takoyaki'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
