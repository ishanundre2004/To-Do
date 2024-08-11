import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo/utils/dialog_box.dart';

import '../utils/todo_tile.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController mycontroller = TextEditingController();

  final _controller = TextEditingController();

  List toDoList = [
    ["Bring Grocerry", false],
    ["Complete the DBMS assignment", false],
  ];

  void checkBoxChecked(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void addNewTask() {
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onAdd: addNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        });
  }

  void deleteTask(int index) {
    setState(() {
      toDoList.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
          title: const Center(
            child: Text(
              'ToDo List',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          backgroundColor: Colors.purple[300],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          backgroundColor: Colors.purple[300],
          child: const Icon(Icons.add),
        ),
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              onChanged: (value) => checkBoxChecked(value, index),
              taskCompleted: toDoList[index][1],
              // ignore: avoid_types_as_parameter_names
              taskName: toDoList[index][0],
              deleteFunction: (context) => deleteTask,
            );
          },
        ));
  }
}
