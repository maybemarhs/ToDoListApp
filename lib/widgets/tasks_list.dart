import 'package:flutter/material.dart';
import 'package:todolist/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todolist/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(itemBuilder: (context, index){
          return TaskTile(
            isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
            taskTitle: Provider.of<TaskData>(context).tasks[index].name,
            checkboxCallback: (checkboxState){
                Provider.of<TaskData>(context, listen: false).toggleTask(index);
            },
          );
        },
          itemCount: Provider.of<TaskData>(context).taskCount,
        );
      }
    );
  }
}