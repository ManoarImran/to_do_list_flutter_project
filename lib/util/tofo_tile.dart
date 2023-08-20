import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

    ToDoTile({Key? key, required this.taskName, required this.taskCompleted, required this.onChanged}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.yellow),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              //check box
              Checkbox(value: taskCompleted, onChanged: onChanged),
              //task name
              Text(taskName),
            ],
          ),
        ),
      ),
    );
  }
}
