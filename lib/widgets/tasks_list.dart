import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:todoeyflutter/models/data.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, taskData, child){
        return ListView.builder(
        //will only revbuild as many as the user can see.
        itemBuilder: (context, index){
          // context contains info on where widget lies in the widget tree so builder knows where to render.

          //refactor
          final task = taskData.tasks[index];
return TaskTile(
  taskTitle: task.name, 
  isChecked: task.isDone,
  checkboxCallback: (checkBoxState){
    taskData.updateTask(task);
  },
  longPressCallback: (){
    taskData.deleteTask(task);
  },
  );
      },
          itemCount: taskData.tasks.length,

      ); 
      }
        
    );
  }
}

