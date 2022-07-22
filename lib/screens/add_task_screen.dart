import 'package:flutter/material.dart';
import 'package:todolist/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String newTaskTitle='';

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black45,
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              onChanged: (newText){
                newTaskTitle = newText;
              },
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.black45,
              ),
              autofocus: true,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: '',
              ),
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Colors.black45,
              ),
              child: TextButton(
                onPressed: () {
                  addTaskCallback(newTaskTitle);
                },
                child: const Text('Add',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
        ],
      ),
      )
    );
  }
}
