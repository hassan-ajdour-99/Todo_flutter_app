import 'package:flutter/material.dart';
import 'package:todo_task_flutter_app/task_tail.dart';
import 'package:todo_task_flutter_app/model/task.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListsState();
}

class _TaskListsState extends State<TaskList> {
  List<Task> tasks = [
    Task(name: "Buy milk"),
    Task(name: "Buy eggs"),
    Task(name: "Buy eggs"),
  ];

  void checkBoxCallBack(bool? currentCheckBoxState) {
    setState(() {
      currentCheckBoxState = currentCheckBoxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        TaskTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          toggelCheckboxState: (bool? currentCheckBoxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
