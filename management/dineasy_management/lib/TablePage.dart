import 'package:flutter/material.dart';
import 'DataModels/TableStatus.dart';

class TablePage extends StatefulWidget {
  static String tag = 'bill-page';

  @override
  _TablePage createState() => _TablePage();
}

List _sampleData() {
  var tableList = List<TableStatus>();
  for (int i = 1; i <= 5; i++) {
    tableList.add(TableStatus(i, "Mr. Erick Soto",
        ["Peking Duck", "Dragon Roll", "Takoyaki", "Fried Rice"]));
  }
  return tableList;
}

// TODO: might create a Util helper => createWidgetFromList
List _createTableButtonFromList(List tableList) {
  var buttonsList = List<FlatButton>();
  for (var tableStatus in tableList) {
    buttonsList.add(FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: () => print("on press"),
        child: TableCard(tableStatus)));
  }
  return buttonsList;
}

List _createTextFromList(List textList) {
  var textsList = List<Text>();
  for (var text in textList) {
    textsList.add(Text(text));
  }
  return textsList;
}

class _TablePage extends State<TablePage> {
  var tableList;

  @override
  Widget build(BuildContext context) {
    print("Created Table Page");

    // TODO: replace this with data base access
    tableList = _sampleData();

    final body = Container(
      margin: EdgeInsets.all(20.0),
      decoration:
          new BoxDecoration(border: new Border.all(color: Colors.black)),
      child: ListView(
        children: _createTableButtonFromList(tableList)
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}

class TableCard extends StatelessWidget {
  TableStatus tableStatus;

  TableCard(this.tableStatus);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          children: <Widget>[
            ListTile(
                leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Text(tableStatus.tableNumber.toString(),
                        style: TextStyle(color: Colors.black, fontSize: 18.0))),
                title: Text(tableStatus.customerName, style: TextStyle(fontSize: 20.0))
                // TODO: might want to put something in subtitle?
                ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 15.0),
              height: 80.0,
              child: ListView(
                children: _createTextFromList(tableStatus.orderedList),
              ),
            )
          ],
        ),
      ),
    );
  }
}
