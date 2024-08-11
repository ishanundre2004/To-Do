import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  VoidCallback onAdd;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller,
    required this.onAdd,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[300],
      content: SizedBox(
        height: 130,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18)),
                  hintText: "Add new task",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: ElevatedButton(
                        onPressed: onAdd,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: Colors.purple[100],
                        ),
                        child: const Text('Add'),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                      child: ElevatedButton(
                        onPressed: onCancel,
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          backgroundColor: Colors.purple[300],
                        ),
                        child: const Text('Cancel'),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
