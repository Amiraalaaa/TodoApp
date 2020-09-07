import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/Models/Task_data.dart';

class AddingScreen extends StatefulWidget {
  @override
  _AddingScreenState createState() => _AddingScreenState();
}

class _AddingScreenState extends State<AddingScreen> {
  static String newTaskTitle;
  @override
  Widget build(BuildContext context) {

    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)),
             color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 30.0,left: 30.0,right: 30.0,bottom: 30.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text("Add Task",textAlign: TextAlign.center
                  ,style:
                  TextStyle(
                    fontSize: 40.0,
                    color: Colors.lightBlueAccent,

                  ),),

                TextField(
                  autofocus: true,
                  cursorColor:Colors.lightBlueAccent,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    newTaskTitle = newText;
                  },
                ),
                Padding(
                  padding:EdgeInsets.only(top: 10.0,left: 10.0,right: 10.0,bottom: 10.0),
                ),
                FlatButton(
                  child: Text("Add",textAlign: TextAlign.center,
                    style:
                    TextStyle(
                        fontSize: 20.0,
                    color: Colors.white),),
                  color: Colors.lightBlueAccent,

                  onPressed: () {
                  Provider.of<Taskdata>(context,listen: false).Taskadder(newTaskTitle);
                  Navigator.pop(context);
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
