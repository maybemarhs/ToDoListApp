import 'package:flutter/material.dart';
import 'package:todolist/screens/tasks_screens.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';
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
    return ChangeNotifierProvider(
        create: (context) => TaskData(),
    child: MaterialApp(home: TaskScreen()));
  }
}
