import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List toDoList = [];
  final _myBox = Hive.box("My Box");

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Excercise", false],
    ];
  
  }
    void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
