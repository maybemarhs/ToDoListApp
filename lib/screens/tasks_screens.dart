import 'package:flutter/material.dart';
import 'package:todolist/models/task_data.dart';
import 'package:todolist/widgets/tasks_list.dart';
import 'package:todolist/screens/add_task_screen.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black45,
        child: const Icon(Icons.add),
        onPressed: (){
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (context) =>SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen((newTaskTitle) {
                        /*setState(() {
                          tasks.add(Task(name:newTaskTitle));
                        });*/
                        Navigator.pop(context);
                      }),),),);
        },
      ),
      backgroundColor: Colors.black26,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
          padding: const EdgeInsets.only(left: 30.0, top:60.0, right:30.0,bottom: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget>[
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  child: Icon(Icons.list,
                    color: Colors.black45,
                  ),
              ),
              SizedBox(height:20.0),
              Text('ToDoList',
                style: TextStyle(color:Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w700,
                ),
              ),
              Text('${Provider.of<TaskData>(context).taskCount} Tasks',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0),)
              ),
              child: TasksList(),
            ),
          )
      ]),
      );
  }
}
