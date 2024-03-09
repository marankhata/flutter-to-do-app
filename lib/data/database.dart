import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

// Creating an instance of Hive
  final _myBox = Hive.box('mybox');

// Run This method if it's the first time opening app ever
  void createInitialData() {
    toDoList = [
      ["Do Laundry", false],
      ["Buy Groceries", false],
      ["Fold Clothes", false]
    ];
  }

  // Load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //Update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
