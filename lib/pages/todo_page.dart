import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TodoPage extends StatelessWidget {
  TodoPage({super.key});
  TextEditingController mycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
        backgroundColor: const Color.fromRGBO(210, 200, 234, 100),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(210, 200, 234, 100),
            ),
            child: Text(
              'To Do List',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            title: const Text("Title 1"),
            onTap: () {},
          )
        ],
      )),
      body: Container(
        padding: const EdgeInsets.all(10),
        color: const Color.fromRGBO(210, 200, 234, 100),
        child: const TextField(
          decoration: InputDecoration(
            fillColor: Color.fromRGBO(210, 200, 234, 0.333),
            border: OutlineInputBorder(),
          ),
          obscureText: true,
        ),
      ),
    );
  }
}
