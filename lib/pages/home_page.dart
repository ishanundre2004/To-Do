import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/todo_tile.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController mycontroller = TextEditingController();

  void getUser() {
    print(mycontroller.text);
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
      body: ListView(
        children: const [
          ToDoTile(),
        ],
      ),
    );
  }
}
