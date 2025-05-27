import 'package:flutter/material.dart';
import 'package:todo_task_flutter_app/task_tail.dart';
import 'package:todo_task_flutter_app/model/task_data.dart';
import "package:provider/provider.dart";

class TaskList extends StatelessWidget {
  const TaskList({super.key});

  @override
  Widget build(BuildContext context) {
    final taskData = Provider.of<TaskData>(context);

    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: taskData.tasks[index].name,
          isChecked: taskData.tasks[index].isDone,
          toggelCheckboxState: (bool? currentCheckBoxState) {
            // setState(() {
            //   Provider.of<TaskData>(context).tasks[index].toggleDone();
            // });
          },
        );
      },
      itemCount: taskData.taskCount,
    );
  }
}
