import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body:SafeArea(
        child: Column(
          children: const <Widget>[
            Icon(Icons.list),
            Text('ToDoList'),
          ],
        ),
      )
    );
  }
}
