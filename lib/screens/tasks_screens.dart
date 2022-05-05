import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black45,
        child: Icon(Icons.add),
        onPressed: null,
      ),
      backgroundColor: Colors.black26,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
          padding: EdgeInsets.only(left: 30.0, top:60.0, right:30.0,bottom: 30.0),
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
              Text('12 Tasks',
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
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0),)
              ),
            ),
          )
      ]),
      );
  }
}
