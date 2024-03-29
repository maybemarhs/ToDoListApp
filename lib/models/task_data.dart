import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';
import 'package:provider/provider.dart';
import 'task.dart';

class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name:'Buy milk'),
    Task(name:'Buy Cheese'),
    Task(name:'Do homework'),
  ];

  void AddTask (String newTaskString){
    final task = Task(name: newTaskString);
    tasks.add(task);
    notifyListeners();
  }

  void toggleTask (int index){
    tasks[index].toggleDone();
    notifyListeners();
  }

  int get taskCount{
    return tasks.length;
  }

  void removeTask(int index){
    tasks.removeAt(index);
    notifyListeners();
  }
}