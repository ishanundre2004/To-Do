import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/todo_tile.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController mycontroller = TextEditingController();

  void getUser() {
    print(mycontroller.text);
  }

  List toDoList = [
    ["Bring Grocerry", false],
    ["Complete the DBMS assignment", false],
  ];

  void checkBoxChecked(bool? value, int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
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
        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
                onChanged: (value) => checkBoxChecked(value, index),
                taskCompleted: toDoList[index][1],
                taskName: toDoList[index][0]);
          },
        ));
  }
}
