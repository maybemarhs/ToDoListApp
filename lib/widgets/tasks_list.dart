import 'package:flutter/material.dart';
import 'package:todolist/widgets/tasks_tile.dart';
import 'package:todolist/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name:'Buy milk'),
    Task(name:'Buy Cheese'),
    Task(name:'Do homework'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (checkboxState){
            setState(() {
              tasks[index].toggleDone();
            });
          },
      );
    },
      itemCount: tasks.length,
    );
  }
}