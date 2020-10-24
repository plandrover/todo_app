import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class Data extends ChangeNotifier {

 List<Task> _tasks = [
Task(name: 'Buy black bread'),
Task(name: 'Get poo'),
Task(name: 'More oat milk'),
];


int get taskCount{
  return _tasks.length;
}
void addTask(String newTaskTitle){
  final task = Task(name: newTaskTitle);
  _tasks.add(task);
  notifyListeners();
}

UnmodifiableListView<Task> get tasks {
  return UnmodifiableListView(_tasks);
}

void updateTask (Task task){
task.toggleDone();
notifyListeners();
}

void deleteTask (Task task){
  _tasks.remove(task);
  notifyListeners();
}

}