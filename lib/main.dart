import 'package:flutter/material.dart';
import 'package:todolist/screens/tasks_screens.dart';
void main() {
  runApp(const MaterialApp(
    home: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TaskScreen();
  }
}
