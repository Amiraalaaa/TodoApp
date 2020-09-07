import 'package:flutter/material.dart';
import 'package:todo_flutter/Models/Task_data.dart';
import 'Screens/TasksScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider <Taskdata>
      (
      child: MaterialApp(
        home: TasksScreen(),
      ),
        create: (context) => Taskdata(),
    );
  }
}
