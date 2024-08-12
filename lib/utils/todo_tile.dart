import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

// ignore: must_be_immutable
class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoTile({
    super.key,
    required this.onChanged,
    required this.taskCompleted,
    required this.taskName,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
        child: Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: deleteFunction,
                icon: Icons.delete,
                backgroundColor: Colors.red.shade300,
                borderRadius: BorderRadius.circular(12),
              ),
            ],
          ),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.purple[300],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                Checkbox(value: taskCompleted, onChanged: onChanged),
                Text(
                  taskName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    decoration: taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
