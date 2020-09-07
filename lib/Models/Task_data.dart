import 'package:flutter/cupertino.dart';
import 'Task.dart';
import 'dart:collection';
class Taskdata extends ChangeNotifier{

  List<Task> _tasks = [
    Task(name: 'lol'),
  ];

  void updatetask(Task t1)
  {
    t1.chosen();
    notifyListeners();
  }

  void Taskadder(String newTaskTitle){
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

int get taskcounter{
  return _tasks.length;
}

UnmodifiableListView<Task> get task{
  return UnmodifiableListView(_tasks);
}
  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

}