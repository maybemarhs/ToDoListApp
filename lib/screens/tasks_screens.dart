import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body:SafeArea(
        minimum: const EdgeInsets.all(30.0),
        child: Column(
          children: const <Widget>[
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
          ],
        ),
      )
    );
  }
}
