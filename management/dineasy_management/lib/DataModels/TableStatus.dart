class TableStatus {
  int tableNumber;
  String customerName;
  List orderedList;

  TableStatus(this.tableNumber, this.customerName,
      [this.orderedList = const []]);

  addItem(String item) => orderedList.add(item);
}
