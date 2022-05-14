import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key}) : super(key: key);


  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkboxCallback(bool checkboxState){
    setState(() {
      isChecked = checkboxState;
    });
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task.',
        style: TextStyle(decoration: isChecked? TextDecoration.lineThrough: null),),
      trailing: TaskCheckBox(isChecked, checkboxCallback),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;
  TaskCheckBox(this.checkboxState, this.toggleCheckboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.black45,
      value: checkboxState,
      onChanged: null,
    );
  }
}