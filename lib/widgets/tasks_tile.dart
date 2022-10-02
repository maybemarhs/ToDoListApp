import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkboxCallback;
  final Function()? onLongPressCallback;
  TaskTile({required this.isChecked, required this.taskTitle, required this.checkboxCallback, required this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.black45,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      );
  }
}
