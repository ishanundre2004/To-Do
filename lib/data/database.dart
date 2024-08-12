import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  final _mybox = Hive.box('mybox');

  void createInitData() {
    toDoList = [
      ["Bring grocery", false],
      ["Do exercise", false],
    ];
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  void updateData() {
    _mybox.put("TODOLIST", toDoList);
  }
}
