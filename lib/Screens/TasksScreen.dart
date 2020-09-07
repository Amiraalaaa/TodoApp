import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/Models/Task_data.dart';
import 'package:todo_flutter/WidgetFolder/Tasklist.dart';
import 'AddingScreen.dart';

class TasksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context) =>
              AddingScreen(

              ),);
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 60.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(child: Icon(Icons.list,
                  color: Colors.lightBlueAccent,
                  size: 30.0,),
                backgroundColor: Colors.white,
                  radius: 30.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text("Todo List ",style: TextStyle(
                  fontSize: 50.0,color: Colors.white,fontStyle: FontStyle.italic,fontWeight: FontWeight.w700,
                ),),
                Text('${Provider.of<Taskdata>(context).taskcounter}',style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0,),
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))
              ),
              child: Tasklist(),
            ),
          )
        ],
      ),
    );
  }
}
