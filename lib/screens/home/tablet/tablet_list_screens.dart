import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_provider/model/task_data.dart';
import 'package:todo_list_provider/widgets/task_tile.dart';

class TabletList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, value, Widget child) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

              crossAxisCount:
              (MediaQuery.of(context).orientation == Orientation.portrait)
                  ? 2
                  : 3),
          itemBuilder: (context, index){
            final task = value.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                value.updateTask(task);
              },
              longPressCallback: () {
                value.deleteTask(task);
              },
            );
          },
          itemCount: value.taskCount,);
      },
    );
  }
}
