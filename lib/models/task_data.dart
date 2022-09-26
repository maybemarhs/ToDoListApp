import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name:'Buy milk'),
    Task(name:'Buy Cheese'),
    Task(name:'Do homework'),
  ];

  int get taskCount{
    return tasks.length;
  }
}