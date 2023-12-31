import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final VoidCallback longPressCallback;

  const TaskTile({
    super.key,
    this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: GestureDetector(
        onLongPress: longPressCallback,
        child: Text(
          taskTitle,
          style: TextStyle(
            decoration:
                (isChecked ?? false) ? TextDecoration.lineThrough : null,
          ),
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
