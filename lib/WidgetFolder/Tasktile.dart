import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool ischecked;
  final String text;
  final Function toggle;
  final Function longPressCallback;

  TaskTile({this.text='',this.ischecked,this.toggle,this.longPressCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title:
      Text(
        text,
        style: TextStyle(
          decoration: ischecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
         activeColor: Colors.lightBlueAccent,
            value: ischecked,
             onChanged: toggle,
    ),
  );
  }
}
