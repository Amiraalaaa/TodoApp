import 'package:flutter/material.dart';
import 'package:todo_flutter/Models/Task_data.dart';
import 'Tasktile.dart';
import 'package:provider/provider.dart';


class Tasklist extends StatefulWidget {
  @override
  _TasklistState createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, taskdata, child) {
        return ListView.builder(itemBuilder: (context,index){
          final task = taskdata.task[index];
          return TaskTile(
            text: task.name,
            ischecked: task.ischosen,
            toggle: (checkboxState)
            {
              taskdata.updatetask(task);
            },
            longPressCallback: () {
              taskdata.deleteTask(task);
            }
          );
        },itemCount:taskdata.taskcounter ,
        );
      },
    );
  }
}